import 'package:injectable/injectable.dart';
import 'package:code_review_master/domain/repositories/course_repository.dart';
import 'package:code_review_master/domain/entities/lesson.dart';

@injectable
class GetLessonsForCourse {
  final CourseRepository repository;

  GetLessonsForCourse(this.repository);

  Future<List<Lesson>> call(String courseName) async {
    return await repository.getLessonsForCourse(courseName);
  }
}
