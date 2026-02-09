import 'package:code_review_master/domain/entities/lesson.dart';
import 'package:code_review_master/domain/repositories/course_repository.dart';
import 'package:code_review_master/data/datasources/local/course_local_datasource.dart';

class CourseRepositoryImpl implements CourseRepository {
  final CourseLocalDataSource _localDataSource;

  CourseRepositoryImpl(this._localDataSource);

  @override
  Future<List<String>> getAvailableCourses() async {
    try {
      return await _localDataSource.getAvailableCourses();
    } catch (e) {
      print('Repository error getting available courses: $e');
      return [];
    }
  }

  @override
  Future<List<Lesson>> getLessonsForCourse(String courseName) async {
    try {
      return await _localDataSource.getLessonsForCourse(courseName);
    } catch (e) {
      print('Repository error getting lessons for course $courseName: $e');
      return [];
    }
  }

  @override
  Future<Lesson?> getLessonById(String courseName, String lessonId) async {
    try {
      return await _localDataSource.getLessonById(courseName, lessonId);
    } catch (e) {
      print('Repository error getting lesson $lessonId: $e');
      return null;
    }
  }

  @override
  Future<bool> importCourse(String sourcePath) async {
    try {
      await _localDataSource.importCourse(sourcePath);
      return true;
    } catch (e) {
      print('Repository error importing course: $e');
      return false;
    }
  }

  @override
  Future<bool> deleteCourse(String courseName) async {
    try {
      await _localDataSource.deleteCourse(courseName);
      return true;
    } catch (e) {
      print('Repository error deleting course $courseName: $e');
      return false;
    }
  }

  @override
  Future<void> ensureCoursesDirectory() async {
    try {
      // Создаем базовую структуру
      await getAvailableCourses();

      // Автоимпорт курсов из папки проекта
      await _localDataSource.autoImportProjectCourses();
    } catch (e) {
      print('Error ensuring courses directory $e');
    }
  }
}
