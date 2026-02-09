import 'package:code_review_master/presentation/widgets/course_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:file_picker/file_picker.dart';
import 'package:code_review_master/presentation/pages/course_selection/bloc/course_selection_bloc.dart';

import '../../common/error_widget.dart';
import '../../common/loading_widget.dart';
import '../lesson_list/lesson_list_page.dart';

class CourseSelectionPage extends StatefulWidget {
  const CourseSelectionPage({super.key});

  @override
  State<CourseSelectionPage> createState() => _CourseSelectionPageState();
}

class _CourseSelectionPageState extends State<CourseSelectionPage> {
  @override
  void initState() {
    super.initState();
    _loadCourses();
  }

  void _loadCourses() {
    context.read<CourseSelectionBloc>().add(CourseSelectionLoadRequested());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Выберите курс'),
        actions: [
          IconButton(
            icon: const Icon(Icons.folder_open),
            onPressed: () => _importCourse,
            tooltip: 'Импортировать курс',
          ),
          IconButton(
            icon: const Icon(Icons.refresh),
            onPressed: _loadCourses,
            tooltip: 'Обновить',
          ),
        ],
      ),
      body: BlocBuilder<CourseSelectionBloc, CourseSelectionState>(
        builder: (context, state) {
          return switch (state) {
            CourseSelectionInitial() => const LoadingWidget(),
            CourseSelectionLoading() => const LoadingWidget(),
            CourseSelectionLoaded(:final courses) =>
              _CourseListView(courses: courses),
            CourseSelectionError(:final message) =>
              AppErrorWidget(message: message, onRetry: _loadCourses),
            // TODO: Handle this case.
            CourseSelectionState() => throw UnimplementedError(),
          };
        },
      ),
    );
  }

  Future<void> _importCourse(BuildContext context) async {
    // Выбираем директорию (папку)
    final directory = await FilePicker.platform.getDirectoryPath(
      dialogTitle: 'Выберите папку с курсом',
    );

    if (directory != null) {
      final scaffold = ScaffoldMessenger.of(context);

      try {
        // Показываем индикатор загрузки
        scaffold.showSnackBar(
          const SnackBar(
            content: Row(
              children: [
                CircularProgressIndicator(),
                SizedBox(width: 16),
                Text('Импортируем курс...'),
              ],
            ),
            duration: Duration(seconds: 5),
          ),
        );

        // Импортируем папку
        context.read<CourseSelectionBloc>().add(
              CourseSelectionImportRequested(directory),
            );

        // Обновляем список через 1 секунду
        await Future.delayed(const Duration(seconds: 1));
        context.read<CourseSelectionBloc>().add(
              CourseSelectionRefreshRequested(),
            );

        scaffold.hideCurrentSnackBar();
        scaffold.showSnackBar(
          SnackBar(
            content: Text('Курс импортирован из $directory'),
          ),
        );
      } catch (e) {
        scaffold.hideCurrentSnackBar();
        scaffold.showSnackBar(
          SnackBar(
            content: Text('Ошибка импорта: $e'),
            backgroundColor: Colors.red,
          ),
        );
      }
    }
  }
}

class _CourseListView extends StatelessWidget {
  final List<String> courses;

  const _CourseListView({required this.courses});

  @override
  Widget build(BuildContext context) {
    if (courses.isEmpty) {
      return const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.folder_off, size: 64, color: Colors.grey),
            SizedBox(height: 16),
            Text('Курсы не найдены'),
            Text('Используйте кнопку импорта',
                style: TextStyle(color: Colors.grey)),
          ],
        ),
      );
    }

    return ListView.builder(
      padding: const EdgeInsets.all(16),
      itemCount: courses.length,
      itemBuilder: (context, index) {
        final courseName = courses[index];
        return Padding(
          padding: const EdgeInsets.only(bottom: 12),
          child: CourseCard(
            courseName: courseName,
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => LessonListPage(courseName: courseName),
                ),
              );
            },
          ),
        );
      },
    );
  }
}
