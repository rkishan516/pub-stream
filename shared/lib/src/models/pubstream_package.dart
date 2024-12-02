import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shared/src/models/pubstream_version.dart';

part 'pubstream_package.freezed.dart';
part 'pubstream_package.g.dart';

@freezed
class PubStreamPackage with _$PubStreamPackage {
  factory PubStreamPackage({
    required String name,
    required bool private,
    @DateTimeSerializer() required DateTime createdAt,
    @DateTimeSerializer() required DateTime updatedAt,
    @Default(<PubStreamVersion>[]) List<PubStreamVersion> versions,
    @Default(<String>[]) List<String> uploaders,
    int? download,
  }) = _PubStreamPackage;

  factory PubStreamPackage.fromJson(Map<String, dynamic> map) =>
      _$PubStreamPackageFromJson(map);
}

class DateTimeSerializer implements JsonConverter<DateTime, DateTime> {
  const DateTimeSerializer();

  @override
  DateTime fromJson(DateTime timestamp) => timestamp;

  @override
  DateTime toJson(DateTime date) => date;
}
