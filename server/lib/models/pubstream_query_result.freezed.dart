// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pubstream_query_result.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PubStreamQueryResult _$PubStreamQueryResultFromJson(Map<String, dynamic> json) {
  return _PubStreamQueryResult.fromJson(json);
}

/// @nodoc
mixin _$PubStreamQueryResult {
  int get count => throw _privateConstructorUsedError;
  List<PubStreamPackage> get packages => throw _privateConstructorUsedError;

  /// Serializes this PubStreamQueryResult to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PubStreamQueryResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PubStreamQueryResultCopyWith<PubStreamQueryResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PubStreamQueryResultCopyWith<$Res> {
  factory $PubStreamQueryResultCopyWith(PubStreamQueryResult value,
          $Res Function(PubStreamQueryResult) then) =
      _$PubStreamQueryResultCopyWithImpl<$Res, PubStreamQueryResult>;
  @useResult
  $Res call({int count, List<PubStreamPackage> packages});
}

/// @nodoc
class _$PubStreamQueryResultCopyWithImpl<$Res,
        $Val extends PubStreamQueryResult>
    implements $PubStreamQueryResultCopyWith<$Res> {
  _$PubStreamQueryResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PubStreamQueryResult
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
              as List<PubStreamPackage>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PubStreamQueryResultImplCopyWith<$Res>
    implements $PubStreamQueryResultCopyWith<$Res> {
  factory _$$PubStreamQueryResultImplCopyWith(_$PubStreamQueryResultImpl value,
          $Res Function(_$PubStreamQueryResultImpl) then) =
      __$$PubStreamQueryResultImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int count, List<PubStreamPackage> packages});
}

/// @nodoc
class __$$PubStreamQueryResultImplCopyWithImpl<$Res>
    extends _$PubStreamQueryResultCopyWithImpl<$Res, _$PubStreamQueryResultImpl>
    implements _$$PubStreamQueryResultImplCopyWith<$Res> {
  __$$PubStreamQueryResultImplCopyWithImpl(_$PubStreamQueryResultImpl _value,
      $Res Function(_$PubStreamQueryResultImpl) _then)
      : super(_value, _then);

  /// Create a copy of PubStreamQueryResult
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? count = null,
    Object? packages = null,
  }) {
    return _then(_$PubStreamQueryResultImpl(
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      packages: null == packages
          ? _value._packages
          : packages // ignore: cast_nullable_to_non_nullable
              as List<PubStreamPackage>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PubStreamQueryResultImpl implements _PubStreamQueryResult {
  _$PubStreamQueryResultImpl(
      {required this.count, required final List<PubStreamPackage> packages})
      : _packages = packages;

  factory _$PubStreamQueryResultImpl.fromJson(Map<String, dynamic> json) =>
      _$$PubStreamQueryResultImplFromJson(json);

  @override
  final int count;
  final List<PubStreamPackage> _packages;
  @override
  List<PubStreamPackage> get packages {
    if (_packages is EqualUnmodifiableListView) return _packages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_packages);
  }

  @override
  String toString() {
    return 'PubStreamQueryResult(count: $count, packages: $packages)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PubStreamQueryResultImpl &&
            (identical(other.count, count) || other.count == count) &&
            const DeepCollectionEquality().equals(other._packages, _packages));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, count, const DeepCollectionEquality().hash(_packages));

  /// Create a copy of PubStreamQueryResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PubStreamQueryResultImplCopyWith<_$PubStreamQueryResultImpl>
      get copyWith =>
          __$$PubStreamQueryResultImplCopyWithImpl<_$PubStreamQueryResultImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PubStreamQueryResultImplToJson(
      this,
    );
  }
}

abstract class _PubStreamQueryResult implements PubStreamQueryResult {
  factory _PubStreamQueryResult(
          {required final int count,
          required final List<PubStreamPackage> packages}) =
      _$PubStreamQueryResultImpl;

  factory _PubStreamQueryResult.fromJson(Map<String, dynamic> json) =
      _$PubStreamQueryResultImpl.fromJson;

  @override
  int get count;
  @override
  List<PubStreamPackage> get packages;

  /// Create a copy of PubStreamQueryResult
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PubStreamQueryResultImplCopyWith<_$PubStreamQueryResultImpl>
      get copyWith => throw _privateConstructorUsedError;
}
