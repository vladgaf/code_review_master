import 'package:code_review_master/presentation/common/error_widget.dart';
import 'package:code_review_master/presentation/common/loading_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:code_review_master/core/di/di.dart';
import 'package:code_review_master/domain/entities/lesson.dart';
import 'package:code_review_master/presentation/pages/lesson_list/bloc/lesson_list_bloc.dart';
import 'package:code_review_master/presentation/pages/lesson_session/lesson_session_page.dart';
import 'package:code_review_master/presentation/pages/lesson_list/widgets/lesson_card.dart';

import '../../../domain/repositories/course_repository.dart';

class LessonListPage extends StatefulWidget {
  final String courseName;

  const LessonListPage({super.key, required this.courseName});

  @override
  State<LessonListPage> createState() => _LessonListPageState();
}

class _LessonListPageState extends State<LessonListPage> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      // Создаем BLoC вручную с параметром
      create: (context) => LessonListBloc(
        sl.get<CourseRepository>(), // Получаем репозиторий из DI
        widget.courseName, // Передаем параметр
      )..add(LessonListLoadRequested()),
      child: Scaffold(
        appBar: AppBar(
          title: Text(widget.courseName.toUpperCase()),
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () => Navigator.pop(context),
          ),
        ),
        body: const _LessonListBody(),
      ),
    );
  }
}

class _LessonListBody extends StatelessWidget {
  const _LessonListBody();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LessonListBloc, LessonListState>(
      builder: (context, state) {
        return switch (state) {
          LessonListInitial() => const LoadingWidget(),
          LessonListLoading() => const LoadingWidget(),
          LessonListLoaded(:final lessons) => _LessonListView(lessons: lessons),
          LessonListError(:final message) => AppErrorWidget(
              message: message,
              onRetry: () =>
                  context.read<LessonListBloc>().add(LessonListLoadRequested()),
            ),
          // TODO: Handle this case.
          LessonListState() => throw UnimplementedError(),
        };
      },
    );
  }
}

class _LessonListView extends StatelessWidget {
  final List<Lesson> lessons;

  const _LessonListView({required this.lessons});

  @override
  Widget build(BuildContext context) {
    if (lessons.isEmpty) {
      return const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.menu_book, size: 64, color: Colors.grey),
            SizedBox(height: 16),
            Text('Уроки не найдены'),
          ],
        ),
      );
    }

    return ListView.builder(
      padding: const EdgeInsets.all(16),
      itemCount: lessons.length,
      itemBuilder: (context, index) {
        final lesson = lessons[index];
        return Padding(
          padding: const EdgeInsets.only(bottom: 12),
          child: LessonCard(
            lesson: lesson,
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => LessonSessionPage(lesson: lesson),
                ),
              );
            },
          ),
        );
      },
    );
  }
}
