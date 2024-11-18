// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pubstream_package.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PubStreamPackageImpl _$$PubStreamPackageImplFromJson(
        Map<String, dynamic> json) =>
    _$PubStreamPackageImpl(
      name: json['name'] as String,
      private: json['private'] as bool,
      createdAt:
          const DateTimeSerializer().fromJson(json['createdAt'] as DateTime),
      updatedAt:
          const DateTimeSerializer().fromJson(json['updatedAt'] as DateTime),
      versions: (json['versions'] as List<dynamic>?)
              ?.map((e) => PubStreamVersion.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <PubStreamVersion>[],
      uploaders: (json['uploaders'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const <String>[],
      download: (json['download'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$PubStreamPackageImplToJson(
        _$PubStreamPackageImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'private': instance.private,
      'createdAt': const DateTimeSerializer().toJson(instance.createdAt),
      'updatedAt': const DateTimeSerializer().toJson(instance.updatedAt),
      'versions': instance.versions.map((e) => e.toJson()).toList(),
      'uploaders': instance.uploaders,
      'download': instance.download,
    };
