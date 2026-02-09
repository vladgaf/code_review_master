import 'dart:io';
import 'package:injectable/injectable.dart';
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart' as p;
import 'package:code_review_master/data/datasources/local/course_local_datasource.dart';
import 'package:code_review_master/domain/entities/lesson.dart';
import 'package:code_review_master/domain/repositories/course_repository.dart';

class CourseRepositoryImpl implements CourseRepository {
  final CourseLocalDataSource _localDataSource;

  CourseRepositoryImpl(this._localDataSource);

  @override
  Future<List<String>> getAvailableCourses() async {
    try {
      return await _localDataSource.getAvailableCourses();
    } catch (e) {
      print('Error getting available courses: $e');
      return [];
    }
  }

  @override
  Future<List<Lesson>> getLessonsForCourse(String courseName) async {
    try {
      return await _localDataSource.getLessonsForCourse(courseName);
    } catch (e) {
      print('Error getting lessons for course $courseName: $e');
      return [];
    }
  }

  @override
  Future<Lesson?> getLessonById(String courseName, String lessonId) async {
    try {
      return await _localDataSource.getLessonById(courseName, lessonId);
    } catch (e) {
      print('Error getting lesson $lessonId: $e');
      return null;
    }
  }

  @override
  Future<bool> importCourse(String sourcePath) async {
    try {
      await _localDataSource.importCourse(sourcePath);
      return true;
    } catch (e) {
      print('Error importing course: $e');
      return false;
    }
  }

  @override
  Future<bool> deleteCourse(String courseName) async {
    try {
      await _localDataSource.deleteCourse(courseName);
      return true;
    } catch (e) {
      print('Error deleting course: $e');
      return false;
    }
  }

  @override
  Future<void> ensureCoursesDirectory() async {
    try {
      final appDir = await getApplicationDocumentsDirectory();
      final coursesDir = Directory(p.join(appDir.path, 'courses'));
      if (!await coursesDir.exists()) {
        await coursesDir.create(recursive: true);
      }
    } catch (e) {
      print('Error ensuring courses directory: $e');
    }
  }
}
