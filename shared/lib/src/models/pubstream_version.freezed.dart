// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pubstream_version.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PubStreamVersion _$PubStreamVersionFromJson(Map<String, dynamic> json) {
  return _PubStreamVersion.fromJson(json);
}

/// @nodoc
mixin _$PubStreamVersion {
  String get version => throw _privateConstructorUsedError;
  Map<String, dynamic> get pubspec => throw _privateConstructorUsedError;
  @DateTimeSerializer()
  DateTime get createdAt => throw _privateConstructorUsedError;
  String? get pubspecYaml => throw _privateConstructorUsedError;
  String? get uploader => throw _privateConstructorUsedError;
  String? get readme => throw _privateConstructorUsedError;
  String? get changelog => throw _privateConstructorUsedError;

  /// Serializes this PubStreamVersion to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PubStreamVersion
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PubStreamVersionCopyWith<PubStreamVersion> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PubStreamVersionCopyWith<$Res> {
  factory $PubStreamVersionCopyWith(
          PubStreamVersion value, $Res Function(PubStreamVersion) then) =
      _$PubStreamVersionCopyWithImpl<$Res, PubStreamVersion>;
  @useResult
  $Res call(
      {String version,
      Map<String, dynamic> pubspec,
      @DateTimeSerializer() DateTime createdAt,
      String? pubspecYaml,
      String? uploader,
      String? readme,
      String? changelog});
}

/// @nodoc
class _$PubStreamVersionCopyWithImpl<$Res, $Val extends PubStreamVersion>
    implements $PubStreamVersionCopyWith<$Res> {
  _$PubStreamVersionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PubStreamVersion
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? version = null,
    Object? pubspec = null,
    Object? createdAt = null,
    Object? pubspecYaml = freezed,
    Object? uploader = freezed,
    Object? readme = freezed,
    Object? changelog = freezed,
  }) {
    return _then(_value.copyWith(
      version: null == version
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as String,
      pubspec: null == pubspec
          ? _value.pubspec
          : pubspec // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      pubspecYaml: freezed == pubspecYaml
          ? _value.pubspecYaml
          : pubspecYaml // ignore: cast_nullable_to_non_nullable
              as String?,
      uploader: freezed == uploader
          ? _value.uploader
          : uploader // ignore: cast_nullable_to_non_nullable
              as String?,
      readme: freezed == readme
          ? _value.readme
          : readme // ignore: cast_nullable_to_non_nullable
              as String?,
      changelog: freezed == changelog
          ? _value.changelog
          : changelog // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PubStreamVersionImplCopyWith<$Res>
    implements $PubStreamVersionCopyWith<$Res> {
  factory _$$PubStreamVersionImplCopyWith(_$PubStreamVersionImpl value,
          $Res Function(_$PubStreamVersionImpl) then) =
      __$$PubStreamVersionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String version,
      Map<String, dynamic> pubspec,
      @DateTimeSerializer() DateTime createdAt,
      String? pubspecYaml,
      String? uploader,
      String? readme,
      String? changelog});
}

/// @nodoc
class __$$PubStreamVersionImplCopyWithImpl<$Res>
    extends _$PubStreamVersionCopyWithImpl<$Res, _$PubStreamVersionImpl>
    implements _$$PubStreamVersionImplCopyWith<$Res> {
  __$$PubStreamVersionImplCopyWithImpl(_$PubStreamVersionImpl _value,
      $Res Function(_$PubStreamVersionImpl) _then)
      : super(_value, _then);

  /// Create a copy of PubStreamVersion
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? version = null,
    Object? pubspec = null,
    Object? createdAt = null,
    Object? pubspecYaml = freezed,
    Object? uploader = freezed,
    Object? readme = freezed,
    Object? changelog = freezed,
  }) {
    return _then(_$PubStreamVersionImpl(
      version: null == version
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as String,
      pubspec: null == pubspec
          ? _value._pubspec
          : pubspec // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      pubspecYaml: freezed == pubspecYaml
          ? _value.pubspecYaml
          : pubspecYaml // ignore: cast_nullable_to_non_nullable
              as String?,
      uploader: freezed == uploader
          ? _value.uploader
          : uploader // ignore: cast_nullable_to_non_nullable
              as String?,
      readme: freezed == readme
          ? _value.readme
          : readme // ignore: cast_nullable_to_non_nullable
              as String?,
      changelog: freezed == changelog
          ? _value.changelog
          : changelog // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PubStreamVersionImpl implements _PubStreamVersion {
  _$PubStreamVersionImpl(
      {required this.version,
      required final Map<String, dynamic> pubspec,
      @DateTimeSerializer() required this.createdAt,
      this.pubspecYaml,
      this.uploader,
      this.readme,
      this.changelog})
      : _pubspec = pubspec;

  factory _$PubStreamVersionImpl.fromJson(Map<String, dynamic> json) =>
      _$$PubStreamVersionImplFromJson(json);

  @override
  final String version;
  final Map<String, dynamic> _pubspec;
  @override
  Map<String, dynamic> get pubspec {
    if (_pubspec is EqualUnmodifiableMapView) return _pubspec;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_pubspec);
  }

  @override
  @DateTimeSerializer()
  final DateTime createdAt;
  @override
  final String? pubspecYaml;
  @override
  final String? uploader;
  @override
  final String? readme;
  @override
  final String? changelog;

  @override
  String toString() {
    return 'PubStreamVersion(version: $version, pubspec: $pubspec, createdAt: $createdAt, pubspecYaml: $pubspecYaml, uploader: $uploader, readme: $readme, changelog: $changelog)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PubStreamVersionImpl &&
            (identical(other.version, version) || other.version == version) &&
            const DeepCollectionEquality().equals(other._pubspec, _pubspec) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.pubspecYaml, pubspecYaml) ||
                other.pubspecYaml == pubspecYaml) &&
            (identical(other.uploader, uploader) ||
                other.uploader == uploader) &&
            (identical(other.readme, readme) || other.readme == readme) &&
            (identical(other.changelog, changelog) ||
                other.changelog == changelog));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      version,
      const DeepCollectionEquality().hash(_pubspec),
      createdAt,
      pubspecYaml,
      uploader,
      readme,
      changelog);

  /// Create a copy of PubStreamVersion
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PubStreamVersionImplCopyWith<_$PubStreamVersionImpl> get copyWith =>
      __$$PubStreamVersionImplCopyWithImpl<_$PubStreamVersionImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PubStreamVersionImplToJson(
      this,
    );
  }
}

abstract class _PubStreamVersion implements PubStreamVersion {
  factory _PubStreamVersion(
      {required final String version,
      required final Map<String, dynamic> pubspec,
      @DateTimeSerializer() required final DateTime createdAt,
      final String? pubspecYaml,
      final String? uploader,
      final String? readme,
      final String? changelog}) = _$PubStreamVersionImpl;

  factory _PubStreamVersion.fromJson(Map<String, dynamic> json) =
      _$PubStreamVersionImpl.fromJson;

  @override
  String get version;
  @override
  Map<String, dynamic> get pubspec;
  @override
  @DateTimeSerializer()
  DateTime get createdAt;
  @override
  String? get pubspecYaml;
  @override
  String? get uploader;
  @override
  String? get readme;
  @override
  String? get changelog;

  /// Create a copy of PubStreamVersion
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PubStreamVersionImplCopyWith<_$PubStreamVersionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
