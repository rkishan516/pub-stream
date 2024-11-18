import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:server/models/pubstream_package.dart';

part 'pubstream_query_result.freezed.dart';
part 'pubstream_query_result.g.dart';

@freezed
class PubStreamQueryResult with _$PubStreamQueryResult {
  factory PubStreamQueryResult({
    required int count,
    required List<PubStreamPackage> packages,
  }) = _PubStreamQueryResult;

  factory PubStreamQueryResult.fromJson(Map<String, dynamic> map) =>
      _$PubStreamQueryResultFromJson(map);
}
