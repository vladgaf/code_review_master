import 'package:injectable/injectable.dart';
import 'package:code_review_master/domain/repositories/course_repository.dart';

@injectable
class ImportCourse {
  final CourseRepository repository;

  ImportCourse(this.repository);

  Future<void> call(String sourcePath) async {
    await repository.importCourse(sourcePath);
  }
}
