import 'package:injectable/injectable.dart';
import 'package:code_review_master/domain/repositories/course_repository.dart';

@injectable
class GetAvailableCourses {
  final CourseRepository repository;

  GetAvailableCourses(this.repository);

  Future<List<String>> call() async {
    return await repository.getAvailableCourses();
  }
}
