import 'package:code_review_master/domain/entities/lesson.dart';

abstract class CourseRepository {
  Future<List<String>> getAvailableCourses();
  Future<List<Lesson>> getLessonsForCourse(String courseName);
  Future<Lesson?> getLessonById(String courseName, String lessonId);
  Future<bool> importCourse(String sourcePath);
  Future<bool> deleteCourse(String courseName);
  Future<void> ensureCoursesDirectory();
}
