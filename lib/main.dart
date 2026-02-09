import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:code_review_master/core/di/di.dart';
import 'package:code_review_master/core/theme/app_theme.dart';
import 'package:code_review_master/presentation/pages/course_selection/course_selection_page.dart';
import 'package:code_review_master/presentation/pages/course_selection/bloc/course_selection_bloc.dart';

import 'domain/repositories/course_repository.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // Инициализация DI
  configureDependencies();

  // Создаем директорию для курсов если её нет
  try {
    final repository = sl.get<CourseRepository>();
    await repository.ensureCoursesDirectory();
  } catch (e) {
    print('Error initializing courses directory: $e');
  }

  runApp(const CodeReviewMasterApp());
}

class CodeReviewMasterApp extends StatelessWidget {
  const CodeReviewMasterApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Code Review Master',
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      debugShowCheckedModeBanner: false,
      home: BlocProvider(
        create: (context) => sl<CourseSelectionBloc>(),
        child: const CourseSelectionPage(),
      ),
    );
  }
}
