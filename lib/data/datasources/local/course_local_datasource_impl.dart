import 'dart:convert';
import 'dart:io';
import 'package:path/path.dart' as p;
import 'package:path_provider/path_provider.dart';
import 'package:code_review_master/domain/entities/lesson.dart';

import '../../../core/utils/file_utlis.dart';
import 'course_local_datasource.dart';

class CourseLocalDataSourceImpl implements CourseLocalDataSource {
  @override
  Future<List<String>> getAvailableCourses() async {
    try {
      final coursesDir = await _getCoursesDirectory();
      final dir = Directory(coursesDir);
      if (!await dir.exists()) {
        await dir.create(recursive: true);
        return [];
      }
      return await FileUtils.listDirectories(coursesDir);
    } catch (e) {
      // TODO: заменить на logger
      print('Error getting courses: $e');
      return [];
    }
  }

  @override
  Future<List<Lesson>> getLessonsForCourse(String courseName) async {
    try {
      final courseDir = await _getCourseDirectory(courseName);
      final dir = Directory(courseDir);
      if (!await dir.exists()) {
        return [];
      }

      final lessonFiles = await FileUtils.listJsonFiles(courseDir);
      final lessons = <Lesson>[];

      for (final filePath in lessonFiles) {
        try {
          final file = File(filePath);
          final content = await file.readAsString();
          final json = jsonDecode(content) as Map<String, dynamic>;
          lessons.add(Lesson.fromJson(json));
        } catch (e) {
          print('Error parsing lesson file $filePath: $e');
        }
      }

      lessons.sort((a, b) => a.title.compareTo(b.title));
      return lessons;
    } catch (e) {
      print('Error getting lessons for course $courseName: $e');
      return [];
    }
  }

  @override
  Future<Lesson?> getLessonById(String courseName, String lessonId) async {
    try {
      final lessons = await getLessonsForCourse(courseName);
      for (final lesson in lessons) {
        if (lesson.id == lessonId) {
          return lesson;
        }
      }
      return null;
    } catch (e) {
      print('Error getting lesson $lessonId: $e');
      return null;
    }
  }

  @override
  Future<void> importCourse(String sourcePath) async {
    try {
      final sourceDir = Directory(sourcePath);
      if (!await sourceDir.exists()) {
        throw Exception('Source directory does not exist: $sourcePath');
      }

      final courseName = p.basename(sourcePath);
      final destDir = await _getCourseDirectory(courseName);

      await FileUtils.copyDirectory(sourcePath, destDir);
    } catch (e) {
      print('Error importing course: $e');
      rethrow;
    }
  }

  @override
  Future<void> deleteCourse(String courseName) async {
    try {
      final courseDir = await _getCourseDirectory(courseName);
      final dir = Directory(courseDir);
      if (await dir.exists()) {
        await dir.delete(recursive: true);
      }
    } catch (e) {
      print('Error deleting course $courseName: $e');
      rethrow;
    }
  }

  @override
  Future<void> autoImportProjectCourses() async {
    try {
      // Путь к папке с курсами в проекте
      final projectDir = Directory.current.path;
      final projectCoursesDir = p.join(projectDir, 'data', 'courses');

      final sourceDir = Directory(projectCoursesDir);
      if (!await sourceDir.exists()) {
        print('Project courses directory not found: $projectCoursesDir');
        return;
      }

      // Получаем все подпапки (курсы)
      final dirs = await sourceDir.list().toList();

      for (final entity in dirs) {
        if (entity is Directory) {
          final courseName = p.basename(entity.path);
          final destDir = await _getCourseDirectory(courseName);

          // Проверяем, не существует ли уже такой курс
          if (!await Directory(destDir).exists()) {
            print('Auto-importing course: $courseName');
            await importCourse(entity.path);
          }
        }
      }

      print('Auto-import completed');
    } catch (e) {
      print('Error in auto-import $e');
    }
  }

  // Private helpers
  Future<String> _getCoursesDirectory() async {
    final appDir = await getApplicationDocumentsDirectory();
    return p.join(appDir.path, 'CodeReviewMaster', 'courses');
  }

  Future<String> _getCourseDirectory(String courseName) async {
    final coursesDir = await _getCoursesDirectory();
    return p.join(coursesDir, courseName);
  }
}
