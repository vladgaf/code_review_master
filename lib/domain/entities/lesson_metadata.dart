import 'package:freezed_annotation/freezed_annotation.dart';

part 'lesson_metadata.freezed.dart';
part 'lesson_metadata.g.dart';

@freezed
class LessonMetadata with _$LessonMetadata {
  const factory LessonMetadata({
    required String author,
    required DateTime created,
    required String version,
    @Default({}) Map<String, dynamic> additionalInfo,
  }) = _LessonMetadata;

  factory LessonMetadata.fromJson(Map<String, dynamic> json) =>
      _$LessonMetadataFromJson(json);
}
