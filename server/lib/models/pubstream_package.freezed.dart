// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pubstream_package.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PubStreamPackage _$PubStreamPackageFromJson(Map<String, dynamic> json) {
  return _PubStreamPackage.fromJson(json);
}

/// @nodoc
mixin _$PubStreamPackage {
  String get name => throw _privateConstructorUsedError;
  bool get private => throw _privateConstructorUsedError;
  @DateTimeSerializer()
  DateTime get createdAt => throw _privateConstructorUsedError;
  @DateTimeSerializer()
  DateTime get updatedAt => throw _privateConstructorUsedError;
  List<PubStreamVersion> get versions => throw _privateConstructorUsedError;
  List<String> get uploaders => throw _privateConstructorUsedError;
  int? get download => throw _privateConstructorUsedError;

  /// Serializes this PubStreamPackage to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PubStreamPackage
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PubStreamPackageCopyWith<PubStreamPackage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PubStreamPackageCopyWith<$Res> {
  factory $PubStreamPackageCopyWith(
          PubStreamPackage value, $Res Function(PubStreamPackage) then) =
      _$PubStreamPackageCopyWithImpl<$Res, PubStreamPackage>;
  @useResult
  $Res call(
      {String name,
      bool private,
      @DateTimeSerializer() DateTime createdAt,
      @DateTimeSerializer() DateTime updatedAt,
      List<PubStreamVersion> versions,
      List<String> uploaders,
      int? download});
}

/// @nodoc
class _$PubStreamPackageCopyWithImpl<$Res, $Val extends PubStreamPackage>
    implements $PubStreamPackageCopyWith<$Res> {
  _$PubStreamPackageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PubStreamPackage
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? private = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? versions = null,
    Object? uploaders = null,
    Object? download = freezed,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      private: null == private
          ? _value.private
          : private // ignore: cast_nullable_to_non_nullable
              as bool,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      versions: null == versions
          ? _value.versions
          : versions // ignore: cast_nullable_to_non_nullable
              as List<PubStreamVersion>,
      uploaders: null == uploaders
          ? _value.uploaders
          : uploaders // ignore: cast_nullable_to_non_nullable
              as List<String>,
      download: freezed == download
          ? _value.download
          : download // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PubStreamPackageImplCopyWith<$Res>
    implements $PubStreamPackageCopyWith<$Res> {
  factory _$$PubStreamPackageImplCopyWith(_$PubStreamPackageImpl value,
          $Res Function(_$PubStreamPackageImpl) then) =
      __$$PubStreamPackageImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      bool private,
      @DateTimeSerializer() DateTime createdAt,
      @DateTimeSerializer() DateTime updatedAt,
      List<PubStreamVersion> versions,
      List<String> uploaders,
      int? download});
}

/// @nodoc
class __$$PubStreamPackageImplCopyWithImpl<$Res>
    extends _$PubStreamPackageCopyWithImpl<$Res, _$PubStreamPackageImpl>
    implements _$$PubStreamPackageImplCopyWith<$Res> {
  __$$PubStreamPackageImplCopyWithImpl(_$PubStreamPackageImpl _value,
      $Res Function(_$PubStreamPackageImpl) _then)
      : super(_value, _then);

  /// Create a copy of PubStreamPackage
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? private = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? versions = null,
    Object? uploaders = null,
    Object? download = freezed,
  }) {
    return _then(_$PubStreamPackageImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      private: null == private
          ? _value.private
          : private // ignore: cast_nullable_to_non_nullable
              as bool,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      versions: null == versions
          ? _value._versions
          : versions // ignore: cast_nullable_to_non_nullable
              as List<PubStreamVersion>,
      uploaders: null == uploaders
          ? _value._uploaders
          : uploaders // ignore: cast_nullable_to_non_nullable
              as List<String>,
      download: freezed == download
          ? _value.download
          : download // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PubStreamPackageImpl implements _PubStreamPackage {
  _$PubStreamPackageImpl(
      {required this.name,
      required this.private,
      @DateTimeSerializer() required this.createdAt,
      @DateTimeSerializer() required this.updatedAt,
      final List<PubStreamVersion> versions = const <PubStreamVersion>[],
      final List<String> uploaders = const <String>[],
      this.download})
      : _versions = versions,
        _uploaders = uploaders;

  factory _$PubStreamPackageImpl.fromJson(Map<String, dynamic> json) =>
      _$$PubStreamPackageImplFromJson(json);

  @override
  final String name;
  @override
  final bool private;
  @override
  @DateTimeSerializer()
  final DateTime createdAt;
  @override
  @DateTimeSerializer()
  final DateTime updatedAt;
  final List<PubStreamVersion> _versions;
  @override
  @JsonKey()
  List<PubStreamVersion> get versions {
    if (_versions is EqualUnmodifiableListView) return _versions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_versions);
  }

  final List<String> _uploaders;
  @override
  @JsonKey()
  List<String> get uploaders {
    if (_uploaders is EqualUnmodifiableListView) return _uploaders;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_uploaders);
  }

  @override
  final int? download;

  @override
  String toString() {
    return 'PubStreamPackage(name: $name, private: $private, createdAt: $createdAt, updatedAt: $updatedAt, versions: $versions, uploaders: $uploaders, download: $download)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PubStreamPackageImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.private, private) || other.private == private) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            const DeepCollectionEquality().equals(other._versions, _versions) &&
            const DeepCollectionEquality()
                .equals(other._uploaders, _uploaders) &&
            (identical(other.download, download) ||
                other.download == download));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      name,
      private,
      createdAt,
      updatedAt,
      const DeepCollectionEquality().hash(_versions),
      const DeepCollectionEquality().hash(_uploaders),
      download);

  /// Create a copy of PubStreamPackage
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PubStreamPackageImplCopyWith<_$PubStreamPackageImpl> get copyWith =>
      __$$PubStreamPackageImplCopyWithImpl<_$PubStreamPackageImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PubStreamPackageImplToJson(
      this,
    );
  }
}

abstract class _PubStreamPackage implements PubStreamPackage {
  factory _PubStreamPackage(
      {required final String name,
      required final bool private,
      @DateTimeSerializer() required final DateTime createdAt,
      @DateTimeSerializer() required final DateTime updatedAt,
      final List<PubStreamVersion> versions,
      final List<String> uploaders,
      final int? download}) = _$PubStreamPackageImpl;

  factory _PubStreamPackage.fromJson(Map<String, dynamic> json) =
      _$PubStreamPackageImpl.fromJson;

  @override
  String get name;
  @override
  bool get private;
  @override
  @DateTimeSerializer()
  DateTime get createdAt;
  @override
  @DateTimeSerializer()
  DateTime get updatedAt;
  @override
  List<PubStreamVersion> get versions;
  @override
  List<String> get uploaders;
  @override
  int? get download;

  /// Create a copy of PubStreamPackage
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PubStreamPackageImplCopyWith<_$PubStreamPackageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
