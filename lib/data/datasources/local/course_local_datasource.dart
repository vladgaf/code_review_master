import 'package:code_review_master/domain/entities/lesson.dart';

abstract class CourseLocalDataSource {
  Future<List<String>> getAvailableCourses();
  Future<List<Lesson>> getLessonsForCourse(String courseName);
  Future<Lesson?> getLessonById(String courseName, String lessonId);
  Future<void> importCourse(String sourcePath);
  Future<void> deleteCourse(String courseName);
  Future<void> autoImportProjectCourses();
}
