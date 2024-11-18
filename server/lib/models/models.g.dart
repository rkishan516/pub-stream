// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ListApiImpl _$$ListApiImplFromJson(Map<String, dynamic> json) =>
    _$ListApiImpl(
      count: (json['count'] as num).toInt(),
      packages: (json['packages'] as List<dynamic>?)
              ?.map((e) => ListApiPackage.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$ListApiImplToJson(_$ListApiImpl instance) =>
    <String, dynamic>{
      'count': instance.count,
      'packages': instance.packages.map((e) => e.toJson()).toList(),
    };

_$ListApiPackageImpl _$$ListApiPackageImplFromJson(Map<String, dynamic> json) =>
    _$ListApiPackageImpl(
      name: json['name'] as String,
      latest: json['latest'] as String,
      updatedAt: DateTime.parse(json['updatedAt'] as String),
      description: json['description'] as String?,
      tags:
          (json['tags'] as List<dynamic>?)?.map((e) => e as String).toList() ??
              const [],
    );

Map<String, dynamic> _$$ListApiPackageImplToJson(
        _$ListApiPackageImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'latest': instance.latest,
      'updatedAt': instance.updatedAt.toIso8601String(),
      'description': instance.description,
      'tags': instance.tags,
    };

_$DetailViewVersionImpl _$$DetailViewVersionImplFromJson(
        Map<String, dynamic> json) =>
    _$DetailViewVersionImpl(
      version: json['version'] as String,
      createdAt: DateTime.parse(json['createdAt'] as String),
    );

Map<String, dynamic> _$$DetailViewVersionImplToJson(
        _$DetailViewVersionImpl instance) =>
    <String, dynamic>{
      'version': instance.version,
      'createdAt': instance.createdAt.toIso8601String(),
    };

_$WebapiDetailViewImpl _$$WebapiDetailViewImplFromJson(
        Map<String, dynamic> json) =>
    _$WebapiDetailViewImpl(
      name: json['name'] as String,
      version: json['version'] as String,
      description: json['description'] as String,
      homepage: json['homepage'] as String,
      createdAt: DateTime.parse(json['createdAt'] as String),
      uploaders: (json['uploaders'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      versions: (json['versions'] as List<dynamic>?)
              ?.map(
                  (e) => DetailViewVersion.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      authors: (json['authors'] as List<dynamic>?)
              ?.map((e) => e as String?)
              .toList() ??
          const [],
      tags:
          (json['tags'] as List<dynamic>?)?.map((e) => e as String).toList() ??
              const [],
      readme: json['readme'] as String?,
      changelog: json['changelog'] as String?,
      dependencies: (json['dependencies'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$$WebapiDetailViewImplToJson(
        _$WebapiDetailViewImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'version': instance.version,
      'description': instance.description,
      'homepage': instance.homepage,
      'createdAt': instance.createdAt.toIso8601String(),
      'uploaders': instance.uploaders,
      'versions': instance.versions.map((e) => e.toJson()).toList(),
      'authors': instance.authors,
      'tags': instance.tags,
      'readme': instance.readme,
      'changelog': instance.changelog,
      'dependencies': instance.dependencies,
    };
