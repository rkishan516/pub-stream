import 'package:freezed_annotation/freezed_annotation.dart';

part 'models.freezed.dart';
part 'models.g.dart';

@freezed
class ListApi with _$ListApi {
  factory ListApi({
    required int count,
    @Default([]) List<ListApiPackage> packages,
  }) = _ListApi;

  factory ListApi.fromJson(Map<String, dynamic> map) => _$ListApiFromJson(map);
}

@freezed
class ListApiPackage with _$ListApiPackage {
  factory ListApiPackage({
    required String name,
    required String latest,
    required DateTime updatedAt,
    String? description,
    @Default([]) List<String> tags,
  }) = _ListApiPackage;

  factory ListApiPackage.fromJson(Map<String, dynamic> map) =>
      _$ListApiPackageFromJson(map);
}

@freezed
class DetailViewVersion with _$DetailViewVersion {
  factory DetailViewVersion({
    required String version,
    required DateTime createdAt,
  }) = _DetailViewVersion;

  factory DetailViewVersion.fromJson(Map<String, dynamic> json) =>
      _$DetailViewVersionFromJson(json);
}

@freezed
class WebapiDetailView with _$WebapiDetailView {
  factory WebapiDetailView({
    required String name,
    required String version,
    required String description,
    required String homepage,
    required DateTime createdAt,
    @Default([]) List<String> uploaders,
    @Default([]) List<DetailViewVersion> versions,
    @Default([]) List<String?> authors,
    @Default([]) List<String> tags,
    String? readme,
    String? changelog,
    List<String>? dependencies,
  }) = _WebapiDetailView;

  factory WebapiDetailView.fromJson(Map<String, dynamic> json) =>
      _$WebapiDetailViewFromJson(json);
}
