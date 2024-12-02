import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shared/src/models/pubstream_package.dart';

part 'pubstream_version.freezed.dart';
part 'pubstream_version.g.dart';

@freezed
class PubStreamVersion with _$PubStreamVersion {
  factory PubStreamVersion({
    required String version,
    required Map<String, dynamic> pubspec,
    @DateTimeSerializer() required DateTime createdAt,
    String? pubspecYaml,
    String? uploader,
    String? readme,
    String? changelog,
  }) = _PubStreamVersion;

  factory PubStreamVersion.fromJson(Map<String, dynamic> map) =>
      _$PubStreamVersionFromJson(map);
}
