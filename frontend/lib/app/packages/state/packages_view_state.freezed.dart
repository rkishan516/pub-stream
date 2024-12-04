// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'packages_view_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$PackagesViewState {
  ListApi get packages => throw _privateConstructorUsedError;

  /// Create a copy of PackagesViewState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PackagesViewStateCopyWith<PackagesViewState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PackagesViewStateCopyWith<$Res> {
  factory $PackagesViewStateCopyWith(
          PackagesViewState value, $Res Function(PackagesViewState) then) =
      _$PackagesViewStateCopyWithImpl<$Res, PackagesViewState>;
  @useResult
  $Res call({ListApi packages});

  $ListApiCopyWith<$Res> get packages;
}

/// @nodoc
class _$PackagesViewStateCopyWithImpl<$Res, $Val extends PackagesViewState>
    implements $PackagesViewStateCopyWith<$Res> {
  _$PackagesViewStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PackagesViewState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? packages = null,
  }) {
    return _then(_value.copyWith(
      packages: null == packages
          ? _value.packages
          : packages // ignore: cast_nullable_to_non_nullable
              as ListApi,
    ) as $Val);
  }

  /// Create a copy of PackagesViewState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ListApiCopyWith<$Res> get packages {
    return $ListApiCopyWith<$Res>(_value.packages, (value) {
      return _then(_value.copyWith(packages: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PackagesViewStateImplCopyWith<$Res>
    implements $PackagesViewStateCopyWith<$Res> {
  factory _$$PackagesViewStateImplCopyWith(_$PackagesViewStateImpl value,
          $Res Function(_$PackagesViewStateImpl) then) =
      __$$PackagesViewStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ListApi packages});

  @override
  $ListApiCopyWith<$Res> get packages;
}

/// @nodoc
class __$$PackagesViewStateImplCopyWithImpl<$Res>
    extends _$PackagesViewStateCopyWithImpl<$Res, _$PackagesViewStateImpl>
    implements _$$PackagesViewStateImplCopyWith<$Res> {
  __$$PackagesViewStateImplCopyWithImpl(_$PackagesViewStateImpl _value,
      $Res Function(_$PackagesViewStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of PackagesViewState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? packages = null,
  }) {
    return _then(_$PackagesViewStateImpl(
      packages: null == packages
          ? _value.packages
          : packages // ignore: cast_nullable_to_non_nullable
              as ListApi,
    ));
  }
}

/// @nodoc

class _$PackagesViewStateImpl implements _PackagesViewState {
  const _$PackagesViewStateImpl({required this.packages});

  @override
  final ListApi packages;

  @override
  String toString() {
    return 'PackagesViewState(packages: $packages)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PackagesViewStateImpl &&
            (identical(other.packages, packages) ||
                other.packages == packages));
  }

  @override
  int get hashCode => Object.hash(runtimeType, packages);

  /// Create a copy of PackagesViewState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PackagesViewStateImplCopyWith<_$PackagesViewStateImpl> get copyWith =>
      __$$PackagesViewStateImplCopyWithImpl<_$PackagesViewStateImpl>(
          this, _$identity);
}

abstract class _PackagesViewState implements PackagesViewState {
  const factory _PackagesViewState({required final ListApi packages}) =
      _$PackagesViewStateImpl;

  @override
  ListApi get packages;

  /// Create a copy of PackagesViewState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PackagesViewStateImplCopyWith<_$PackagesViewStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
