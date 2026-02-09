// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'lesson_metadata.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LessonMetadataImpl _$$LessonMetadataImplFromJson(Map<String, dynamic> json) =>
    _$LessonMetadataImpl(
      author: json['author'] as String,
      created: DateTime.parse(json['created'] as String),
      version: json['version'] as String,
      additionalInfo:
          json['additional_info'] as Map<String, dynamic>? ?? const {},
    );

Map<String, dynamic> _$$LessonMetadataImplToJson(
        _$LessonMetadataImpl instance) =>
    <String, dynamic>{
      'author': instance.author,
      'created': instance.created.toIso8601String(),
      'version': instance.version,
      'additional_info': instance.additionalInfo,
    };
