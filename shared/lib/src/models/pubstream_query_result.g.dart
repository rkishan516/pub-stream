// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pubstream_query_result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PubStreamQueryResultImpl _$$PubStreamQueryResultImplFromJson(
        Map<String, dynamic> json) =>
    _$PubStreamQueryResultImpl(
      count: (json['count'] as num).toInt(),
      packages: (json['packages'] as List<dynamic>)
          .map((e) => PubStreamPackage.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$PubStreamQueryResultImplToJson(
        _$PubStreamQueryResultImpl instance) =>
    <String, dynamic>{
      'count': instance.count,
      'packages': instance.packages.map((e) => e.toJson()).toList(),
    };
