// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'code_snippet.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CodeSnippetImpl _$$CodeSnippetImplFromJson(Map<String, dynamic> json) =>
    _$CodeSnippetImpl(
      id: json['id'] as String,
      title: json['title'] as String,
      code: json['code'] as String,
      language: json['language'] as String,
      hints:
          (json['hints'] as List<dynamic>?)?.map((e) => e as String).toList() ??
              const [],
    );

Map<String, dynamic> _$$CodeSnippetImplToJson(_$CodeSnippetImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'code': instance.code,
      'language': instance.language,
      'hints': instance.hints,
    };
