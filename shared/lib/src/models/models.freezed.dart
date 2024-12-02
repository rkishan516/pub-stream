// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ListApi _$ListApiFromJson(Map<String, dynamic> json) {
  return _ListApi.fromJson(json);
}

/// @nodoc
mixin _$ListApi {
  int get count => throw _privateConstructorUsedError;
  List<ListApiPackage> get packages => throw _privateConstructorUsedError;

  /// Serializes this ListApi to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ListApi
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ListApiCopyWith<ListApi> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ListApiCopyWith<$Res> {
  factory $ListApiCopyWith(ListApi value, $Res Function(ListApi) then) =
      _$ListApiCopyWithImpl<$Res, ListApi>;
  @useResult
  $Res call({int count, List<ListApiPackage> packages});
}

/// @nodoc
class _$ListApiCopyWithImpl<$Res, $Val extends ListApi>
    implements $ListApiCopyWith<$Res> {
  _$ListApiCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ListApi
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? count = null,
    Object? packages = null,
  }) {
    return _then(_value.copyWith(
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      packages: null == packages
          ? _value.packages
          : packages // ignore: cast_nullable_to_non_nullable
              as List<ListApiPackage>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ListApiImplCopyWith<$Res> implements $ListApiCopyWith<$Res> {
  factory _$$ListApiImplCopyWith(
          _$ListApiImpl value, $Res Function(_$ListApiImpl) then) =
      __$$ListApiImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int count, List<ListApiPackage> packages});
}

/// @nodoc
class __$$ListApiImplCopyWithImpl<$Res>
    extends _$ListApiCopyWithImpl<$Res, _$ListApiImpl>
    implements _$$ListApiImplCopyWith<$Res> {
  __$$ListApiImplCopyWithImpl(
      _$ListApiImpl _value, $Res Function(_$ListApiImpl) _then)
      : super(_value, _then);

  /// Create a copy of ListApi
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? count = null,
    Object? packages = null,
  }) {
    return _then(_$ListApiImpl(
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      packages: null == packages
          ? _value._packages
          : packages // ignore: cast_nullable_to_non_nullable
              as List<ListApiPackage>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ListApiImpl implements _ListApi {
  _$ListApiImpl(
      {required this.count, final List<ListApiPackage> packages = const []})
      : _packages = packages;

  factory _$ListApiImpl.fromJson(Map<String, dynamic> json) =>
      _$$ListApiImplFromJson(json);

  @override
  final int count;
  final List<ListApiPackage> _packages;
  @override
  @JsonKey()
  List<ListApiPackage> get packages {
    if (_packages is EqualUnmodifiableListView) return _packages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_packages);
  }

  @override
  String toString() {
    return 'ListApi(count: $count, packages: $packages)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ListApiImpl &&
            (identical(other.count, count) || other.count == count) &&
            const DeepCollectionEquality().equals(other._packages, _packages));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, count, const DeepCollectionEquality().hash(_packages));

  /// Create a copy of ListApi
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ListApiImplCopyWith<_$ListApiImpl> get copyWith =>
      __$$ListApiImplCopyWithImpl<_$ListApiImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ListApiImplToJson(
      this,
    );
  }
}

abstract class _ListApi implements ListApi {
  factory _ListApi(
      {required final int count,
      final List<ListApiPackage> packages}) = _$ListApiImpl;

  factory _ListApi.fromJson(Map<String, dynamic> json) = _$ListApiImpl.fromJson;

  @override
  int get count;
  @override
  List<ListApiPackage> get packages;

  /// Create a copy of ListApi
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ListApiImplCopyWith<_$ListApiImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ListApiPackage _$ListApiPackageFromJson(Map<String, dynamic> json) {
  return _ListApiPackage.fromJson(json);
}

/// @nodoc
mixin _$ListApiPackage {
  String get name => throw _privateConstructorUsedError;
  String get latest => throw _privateConstructorUsedError;
  DateTime get updatedAt => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  List<String> get tags => throw _privateConstructorUsedError;

  /// Serializes this ListApiPackage to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ListApiPackage
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ListApiPackageCopyWith<ListApiPackage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ListApiPackageCopyWith<$Res> {
  factory $ListApiPackageCopyWith(
          ListApiPackage value, $Res Function(ListApiPackage) then) =
      _$ListApiPackageCopyWithImpl<$Res, ListApiPackage>;
  @useResult
  $Res call(
      {String name,
      String latest,
      DateTime updatedAt,
      String? description,
      List<String> tags});
}

/// @nodoc
class _$ListApiPackageCopyWithImpl<$Res, $Val extends ListApiPackage>
    implements $ListApiPackageCopyWith<$Res> {
  _$ListApiPackageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ListApiPackage
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? latest = null,
    Object? updatedAt = null,
    Object? description = freezed,
    Object? tags = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      latest: null == latest
          ? _value.latest
          : latest // ignore: cast_nullable_to_non_nullable
              as String,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      tags: null == tags
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ListApiPackageImplCopyWith<$Res>
    implements $ListApiPackageCopyWith<$Res> {
  factory _$$ListApiPackageImplCopyWith(_$ListApiPackageImpl value,
          $Res Function(_$ListApiPackageImpl) then) =
      __$$ListApiPackageImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      String latest,
      DateTime updatedAt,
      String? description,
      List<String> tags});
}

/// @nodoc
class __$$ListApiPackageImplCopyWithImpl<$Res>
    extends _$ListApiPackageCopyWithImpl<$Res, _$ListApiPackageImpl>
    implements _$$ListApiPackageImplCopyWith<$Res> {
  __$$ListApiPackageImplCopyWithImpl(
      _$ListApiPackageImpl _value, $Res Function(_$ListApiPackageImpl) _then)
      : super(_value, _then);

  /// Create a copy of ListApiPackage
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? latest = null,
    Object? updatedAt = null,
    Object? description = freezed,
    Object? tags = null,
  }) {
    return _then(_$ListApiPackageImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      latest: null == latest
          ? _value.latest
          : latest // ignore: cast_nullable_to_non_nullable
              as String,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      tags: null == tags
          ? _value._tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ListApiPackageImpl implements _ListApiPackage {
  _$ListApiPackageImpl(
      {required this.name,
      required this.latest,
      required this.updatedAt,
      this.description,
      final List<String> tags = const []})
      : _tags = tags;

  factory _$ListApiPackageImpl.fromJson(Map<String, dynamic> json) =>
      _$$ListApiPackageImplFromJson(json);

  @override
  final String name;
  @override
  final String latest;
  @override
  final DateTime updatedAt;
  @override
  final String? description;
  final List<String> _tags;
  @override
  @JsonKey()
  List<String> get tags {
    if (_tags is EqualUnmodifiableListView) return _tags;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tags);
  }

  @override
  String toString() {
    return 'ListApiPackage(name: $name, latest: $latest, updatedAt: $updatedAt, description: $description, tags: $tags)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ListApiPackageImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.latest, latest) || other.latest == latest) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.description, description) ||
                other.description == description) &&
            const DeepCollectionEquality().equals(other._tags, _tags));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name, latest, updatedAt,
      description, const DeepCollectionEquality().hash(_tags));

  /// Create a copy of ListApiPackage
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ListApiPackageImplCopyWith<_$ListApiPackageImpl> get copyWith =>
      __$$ListApiPackageImplCopyWithImpl<_$ListApiPackageImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ListApiPackageImplToJson(
      this,
    );
  }
}

abstract class _ListApiPackage implements ListApiPackage {
  factory _ListApiPackage(
      {required final String name,
      required final String latest,
      required final DateTime updatedAt,
      final String? description,
      final List<String> tags}) = _$ListApiPackageImpl;

  factory _ListApiPackage.fromJson(Map<String, dynamic> json) =
      _$ListApiPackageImpl.fromJson;

  @override
  String get name;
  @override
  String get latest;
  @override
  DateTime get updatedAt;
  @override
  String? get description;
  @override
  List<String> get tags;

  /// Create a copy of ListApiPackage
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ListApiPackageImplCopyWith<_$ListApiPackageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

DetailViewVersion _$DetailViewVersionFromJson(Map<String, dynamic> json) {
  return _DetailViewVersion.fromJson(json);
}

/// @nodoc
mixin _$DetailViewVersion {
  String get version => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;

  /// Serializes this DetailViewVersion to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DetailViewVersion
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DetailViewVersionCopyWith<DetailViewVersion> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DetailViewVersionCopyWith<$Res> {
  factory $DetailViewVersionCopyWith(
          DetailViewVersion value, $Res Function(DetailViewVersion) then) =
      _$DetailViewVersionCopyWithImpl<$Res, DetailViewVersion>;
  @useResult
  $Res call({String version, DateTime createdAt});
}

/// @nodoc
class _$DetailViewVersionCopyWithImpl<$Res, $Val extends DetailViewVersion>
    implements $DetailViewVersionCopyWith<$Res> {
  _$DetailViewVersionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DetailViewVersion
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? version = null,
    Object? createdAt = null,
  }) {
    return _then(_value.copyWith(
      version: null == version
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DetailViewVersionImplCopyWith<$Res>
    implements $DetailViewVersionCopyWith<$Res> {
  factory _$$DetailViewVersionImplCopyWith(_$DetailViewVersionImpl value,
          $Res Function(_$DetailViewVersionImpl) then) =
      __$$DetailViewVersionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String version, DateTime createdAt});
}

/// @nodoc
class __$$DetailViewVersionImplCopyWithImpl<$Res>
    extends _$DetailViewVersionCopyWithImpl<$Res, _$DetailViewVersionImpl>
    implements _$$DetailViewVersionImplCopyWith<$Res> {
  __$$DetailViewVersionImplCopyWithImpl(_$DetailViewVersionImpl _value,
      $Res Function(_$DetailViewVersionImpl) _then)
      : super(_value, _then);

  /// Create a copy of DetailViewVersion
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? version = null,
    Object? createdAt = null,
  }) {
    return _then(_$DetailViewVersionImpl(
      version: null == version
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DetailViewVersionImpl implements _DetailViewVersion {
  _$DetailViewVersionImpl({required this.version, required this.createdAt});

  factory _$DetailViewVersionImpl.fromJson(Map<String, dynamic> json) =>
      _$$DetailViewVersionImplFromJson(json);

  @override
  final String version;
  @override
  final DateTime createdAt;

  @override
  String toString() {
    return 'DetailViewVersion(version: $version, createdAt: $createdAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DetailViewVersionImpl &&
            (identical(other.version, version) || other.version == version) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, version, createdAt);

  /// Create a copy of DetailViewVersion
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DetailViewVersionImplCopyWith<_$DetailViewVersionImpl> get copyWith =>
      __$$DetailViewVersionImplCopyWithImpl<_$DetailViewVersionImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DetailViewVersionImplToJson(
      this,
    );
  }
}

abstract class _DetailViewVersion implements DetailViewVersion {
  factory _DetailViewVersion(
      {required final String version,
      required final DateTime createdAt}) = _$DetailViewVersionImpl;

  factory _DetailViewVersion.fromJson(Map<String, dynamic> json) =
      _$DetailViewVersionImpl.fromJson;

  @override
  String get version;
  @override
  DateTime get createdAt;

  /// Create a copy of DetailViewVersion
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DetailViewVersionImplCopyWith<_$DetailViewVersionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

WebapiDetailView _$WebapiDetailViewFromJson(Map<String, dynamic> json) {
  return _WebapiDetailView.fromJson(json);
}

/// @nodoc
mixin _$WebapiDetailView {
  String get name => throw _privateConstructorUsedError;
  String get version => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get homepage => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  List<String> get uploaders => throw _privateConstructorUsedError;
  List<DetailViewVersion> get versions => throw _privateConstructorUsedError;
  List<String?> get authors => throw _privateConstructorUsedError;
  List<String> get tags => throw _privateConstructorUsedError;
  String? get readme => throw _privateConstructorUsedError;
  String? get changelog => throw _privateConstructorUsedError;
  List<String>? get dependencies => throw _privateConstructorUsedError;

  /// Serializes this WebapiDetailView to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of WebapiDetailView
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $WebapiDetailViewCopyWith<WebapiDetailView> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WebapiDetailViewCopyWith<$Res> {
  factory $WebapiDetailViewCopyWith(
          WebapiDetailView value, $Res Function(WebapiDetailView) then) =
      _$WebapiDetailViewCopyWithImpl<$Res, WebapiDetailView>;
  @useResult
  $Res call(
      {String name,
      String version,
      String description,
      String homepage,
      DateTime createdAt,
      List<String> uploaders,
      List<DetailViewVersion> versions,
      List<String?> authors,
      List<String> tags,
      String? readme,
      String? changelog,
      List<String>? dependencies});
}

/// @nodoc
class _$WebapiDetailViewCopyWithImpl<$Res, $Val extends WebapiDetailView>
    implements $WebapiDetailViewCopyWith<$Res> {
  _$WebapiDetailViewCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of WebapiDetailView
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? version = null,
    Object? description = null,
    Object? homepage = null,
    Object? createdAt = null,
    Object? uploaders = null,
    Object? versions = null,
    Object? authors = null,
    Object? tags = null,
    Object? readme = freezed,
    Object? changelog = freezed,
    Object? dependencies = freezed,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      version: null == version
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      homepage: null == homepage
          ? _value.homepage
          : homepage // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      uploaders: null == uploaders
          ? _value.uploaders
          : uploaders // ignore: cast_nullable_to_non_nullable
              as List<String>,
      versions: null == versions
          ? _value.versions
          : versions // ignore: cast_nullable_to_non_nullable
              as List<DetailViewVersion>,
      authors: null == authors
          ? _value.authors
          : authors // ignore: cast_nullable_to_non_nullable
              as List<String?>,
      tags: null == tags
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>,
      readme: freezed == readme
          ? _value.readme
          : readme // ignore: cast_nullable_to_non_nullable
              as String?,
      changelog: freezed == changelog
          ? _value.changelog
          : changelog // ignore: cast_nullable_to_non_nullable
              as String?,
      dependencies: freezed == dependencies
          ? _value.dependencies
          : dependencies // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WebapiDetailViewImplCopyWith<$Res>
    implements $WebapiDetailViewCopyWith<$Res> {
  factory _$$WebapiDetailViewImplCopyWith(_$WebapiDetailViewImpl value,
          $Res Function(_$WebapiDetailViewImpl) then) =
      __$$WebapiDetailViewImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      String version,
      String description,
      String homepage,
      DateTime createdAt,
      List<String> uploaders,
      List<DetailViewVersion> versions,
      List<String?> authors,
      List<String> tags,
      String? readme,
      String? changelog,
      List<String>? dependencies});
}

/// @nodoc
class __$$WebapiDetailViewImplCopyWithImpl<$Res>
    extends _$WebapiDetailViewCopyWithImpl<$Res, _$WebapiDetailViewImpl>
    implements _$$WebapiDetailViewImplCopyWith<$Res> {
  __$$WebapiDetailViewImplCopyWithImpl(_$WebapiDetailViewImpl _value,
      $Res Function(_$WebapiDetailViewImpl) _then)
      : super(_value, _then);

  /// Create a copy of WebapiDetailView
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? version = null,
    Object? description = null,
    Object? homepage = null,
    Object? createdAt = null,
    Object? uploaders = null,
    Object? versions = null,
    Object? authors = null,
    Object? tags = null,
    Object? readme = freezed,
    Object? changelog = freezed,
    Object? dependencies = freezed,
  }) {
    return _then(_$WebapiDetailViewImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      version: null == version
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      homepage: null == homepage
          ? _value.homepage
          : homepage // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      uploaders: null == uploaders
          ? _value._uploaders
          : uploaders // ignore: cast_nullable_to_non_nullable
              as List<String>,
      versions: null == versions
          ? _value._versions
          : versions // ignore: cast_nullable_to_non_nullable
              as List<DetailViewVersion>,
      authors: null == authors
          ? _value._authors
          : authors // ignore: cast_nullable_to_non_nullable
              as List<String?>,
      tags: null == tags
          ? _value._tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>,
      readme: freezed == readme
          ? _value.readme
          : readme // ignore: cast_nullable_to_non_nullable
              as String?,
      changelog: freezed == changelog
          ? _value.changelog
          : changelog // ignore: cast_nullable_to_non_nullable
              as String?,
      dependencies: freezed == dependencies
          ? _value._dependencies
          : dependencies // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WebapiDetailViewImpl implements _WebapiDetailView {
  _$WebapiDetailViewImpl(
      {required this.name,
      required this.version,
      required this.description,
      required this.homepage,
      required this.createdAt,
      final List<String> uploaders = const [],
      final List<DetailViewVersion> versions = const [],
      final List<String?> authors = const [],
      final List<String> tags = const [],
      this.readme,
      this.changelog,
      final List<String>? dependencies})
      : _uploaders = uploaders,
        _versions = versions,
        _authors = authors,
        _tags = tags,
        _dependencies = dependencies;

  factory _$WebapiDetailViewImpl.fromJson(Map<String, dynamic> json) =>
      _$$WebapiDetailViewImplFromJson(json);

  @override
  final String name;
  @override
  final String version;
  @override
  final String description;
  @override
  final String homepage;
  @override
  final DateTime createdAt;
  final List<String> _uploaders;
  @override
  @JsonKey()
  List<String> get uploaders {
    if (_uploaders is EqualUnmodifiableListView) return _uploaders;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_uploaders);
  }

  final List<DetailViewVersion> _versions;
  @override
  @JsonKey()
  List<DetailViewVersion> get versions {
    if (_versions is EqualUnmodifiableListView) return _versions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_versions);
  }

  final List<String?> _authors;
  @override
  @JsonKey()
  List<String?> get authors {
    if (_authors is EqualUnmodifiableListView) return _authors;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_authors);
  }

  final List<String> _tags;
  @override
  @JsonKey()
  List<String> get tags {
    if (_tags is EqualUnmodifiableListView) return _tags;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tags);
  }

  @override
  final String? readme;
  @override
  final String? changelog;
  final List<String>? _dependencies;
  @override
  List<String>? get dependencies {
    final value = _dependencies;
    if (value == null) return null;
    if (_dependencies is EqualUnmodifiableListView) return _dependencies;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'WebapiDetailView(name: $name, version: $version, description: $description, homepage: $homepage, createdAt: $createdAt, uploaders: $uploaders, versions: $versions, authors: $authors, tags: $tags, readme: $readme, changelog: $changelog, dependencies: $dependencies)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WebapiDetailViewImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.version, version) || other.version == version) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.homepage, homepage) ||
                other.homepage == homepage) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            const DeepCollectionEquality()
                .equals(other._uploaders, _uploaders) &&
            const DeepCollectionEquality().equals(other._versions, _versions) &&
            const DeepCollectionEquality().equals(other._authors, _authors) &&
            const DeepCollectionEquality().equals(other._tags, _tags) &&
            (identical(other.readme, readme) || other.readme == readme) &&
            (identical(other.changelog, changelog) ||
                other.changelog == changelog) &&
            const DeepCollectionEquality()
                .equals(other._dependencies, _dependencies));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      name,
      version,
      description,
      homepage,
      createdAt,
      const DeepCollectionEquality().hash(_uploaders),
      const DeepCollectionEquality().hash(_versions),
      const DeepCollectionEquality().hash(_authors),
      const DeepCollectionEquality().hash(_tags),
      readme,
      changelog,
      const DeepCollectionEquality().hash(_dependencies));

  /// Create a copy of WebapiDetailView
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$WebapiDetailViewImplCopyWith<_$WebapiDetailViewImpl> get copyWith =>
      __$$WebapiDetailViewImplCopyWithImpl<_$WebapiDetailViewImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WebapiDetailViewImplToJson(
      this,
    );
  }
}

abstract class _WebapiDetailView implements WebapiDetailView {
  factory _WebapiDetailView(
      {required final String name,
      required final String version,
      required final String description,
      required final String homepage,
      required final DateTime createdAt,
      final List<String> uploaders,
      final List<DetailViewVersion> versions,
      final List<String?> authors,
      final List<String> tags,
      final String? readme,
      final String? changelog,
      final List<String>? dependencies}) = _$WebapiDetailViewImpl;

  factory _WebapiDetailView.fromJson(Map<String, dynamic> json) =
      _$WebapiDetailViewImpl.fromJson;

  @override
  String get name;
  @override
  String get version;
  @override
  String get description;
  @override
  String get homepage;
  @override
  DateTime get createdAt;
  @override
  List<String> get uploaders;
  @override
  List<DetailViewVersion> get versions;
  @override
  List<String?> get authors;
  @override
  List<String> get tags;
  @override
  String? get readme;
  @override
  String? get changelog;
  @override
  List<String>? get dependencies;

  /// Create a copy of WebapiDetailView
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WebapiDetailViewImplCopyWith<_$WebapiDetailViewImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
