// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pubstream_version.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PubStreamVersionImpl _$$PubStreamVersionImplFromJson(
        Map<String, dynamic> json) =>
    _$PubStreamVersionImpl(
      version: json['version'] as String,
      pubspec: json['pubspec'] as Map<String, dynamic>,
      createdAt:
          const DateTimeSerializer().fromJson(json['createdAt'] as DateTime),
      pubspecYaml: json['pubspecYaml'] as String?,
      uploader: json['uploader'] as String?,
      readme: json['readme'] as String?,
      changelog: json['changelog'] as String?,
    );

Map<String, dynamic> _$$PubStreamVersionImplToJson(
        _$PubStreamVersionImpl instance) =>
    <String, dynamic>{
      'version': instance.version,
      'pubspec': instance.pubspec,
      'createdAt': const DateTimeSerializer().toJson(instance.createdAt),
      'pubspecYaml': instance.pubspecYaml,
      'uploader': instance.uploader,
      'readme': instance.readme,
      'changelog': instance.changelog,
    };
