import 'package:freezed_annotation/freezed_annotation.dart';

part 'failures.freezed.dart';

@freezed
class Failure with _$Failure {
  const factory Failure.fileSystemFailure({
    required String message,
    @Default('FileSystemError') String code,
  }) = FileSystemFailure;

  const factory Failure.jsonParseFailure({
    required String message,
    @Default('JsonParseError') String code,
  }) = JsonParseFailure;

  const factory Failure.courseNotFoundFailure({
    required String message,
    @Default('CourseNotFound') String code,
  }) = CourseNotFoundFailure;

  const factory Failure.lessonNotFoundFailure({
    required String message,
    @Default('LessonNotFound') String code,
  }) = LessonNotFoundFailure;

  const factory Failure.unknownFailure({
    required String message,
    @Default('UnknownError') String code,
  }) = UnknownFailure;
}
