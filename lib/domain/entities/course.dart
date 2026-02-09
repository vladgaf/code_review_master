import 'package:freezed_annotation/freezed_annotation.dart';

part 'course.freezed.dart';

@freezed
class Course with _$Course {
  const factory Course({
    required String name,
    required String displayName,
    required String description,
    required int lessonCount,
    required DateTime lastUpdated,
  }) = _Course;
}
