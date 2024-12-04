// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'package_home_view_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$PackageHomeViewState {
  WebapiDetailView get detailView => throw _privateConstructorUsedError;

  /// Create a copy of PackageHomeViewState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PackageHomeViewStateCopyWith<PackageHomeViewState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PackageHomeViewStateCopyWith<$Res> {
  factory $PackageHomeViewStateCopyWith(PackageHomeViewState value,
          $Res Function(PackageHomeViewState) then) =
      _$PackageHomeViewStateCopyWithImpl<$Res, PackageHomeViewState>;
  @useResult
  $Res call({WebapiDetailView detailView});

  $WebapiDetailViewCopyWith<$Res> get detailView;
}

/// @nodoc
class _$PackageHomeViewStateCopyWithImpl<$Res,
        $Val extends PackageHomeViewState>
    implements $PackageHomeViewStateCopyWith<$Res> {
  _$PackageHomeViewStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PackageHomeViewState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? detailView = null,
  }) {
    return _then(_value.copyWith(
      detailView: null == detailView
          ? _value.detailView
          : detailView // ignore: cast_nullable_to_non_nullable
              as WebapiDetailView,
    ) as $Val);
  }

  /// Create a copy of PackageHomeViewState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $WebapiDetailViewCopyWith<$Res> get detailView {
    return $WebapiDetailViewCopyWith<$Res>(_value.detailView, (value) {
      return _then(_value.copyWith(detailView: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PackageHomeViewStateImplCopyWith<$Res>
    implements $PackageHomeViewStateCopyWith<$Res> {
  factory _$$PackageHomeViewStateImplCopyWith(_$PackageHomeViewStateImpl value,
          $Res Function(_$PackageHomeViewStateImpl) then) =
      __$$PackageHomeViewStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({WebapiDetailView detailView});

  @override
  $WebapiDetailViewCopyWith<$Res> get detailView;
}

/// @nodoc
class __$$PackageHomeViewStateImplCopyWithImpl<$Res>
    extends _$PackageHomeViewStateCopyWithImpl<$Res, _$PackageHomeViewStateImpl>
    implements _$$PackageHomeViewStateImplCopyWith<$Res> {
  __$$PackageHomeViewStateImplCopyWithImpl(_$PackageHomeViewStateImpl _value,
      $Res Function(_$PackageHomeViewStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of PackageHomeViewState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? detailView = null,
  }) {
    return _then(_$PackageHomeViewStateImpl(
      detailView: null == detailView
          ? _value.detailView
          : detailView // ignore: cast_nullable_to_non_nullable
              as WebapiDetailView,
    ));
  }
}

/// @nodoc

class _$PackageHomeViewStateImpl implements _PackageHomeViewState {
  const _$PackageHomeViewStateImpl({required this.detailView});

  @override
  final WebapiDetailView detailView;

  @override
  String toString() {
    return 'PackageHomeViewState(detailView: $detailView)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PackageHomeViewStateImpl &&
            (identical(other.detailView, detailView) ||
                other.detailView == detailView));
  }

  @override
  int get hashCode => Object.hash(runtimeType, detailView);

  /// Create a copy of PackageHomeViewState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PackageHomeViewStateImplCopyWith<_$PackageHomeViewStateImpl>
      get copyWith =>
          __$$PackageHomeViewStateImplCopyWithImpl<_$PackageHomeViewStateImpl>(
              this, _$identity);
}

abstract class _PackageHomeViewState implements PackageHomeViewState {
  const factory _PackageHomeViewState(
          {required final WebapiDetailView detailView}) =
      _$PackageHomeViewStateImpl;

  @override
  WebapiDetailView get detailView;

  /// Create a copy of PackageHomeViewState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PackageHomeViewStateImplCopyWith<_$PackageHomeViewStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
