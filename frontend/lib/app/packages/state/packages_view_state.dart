import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shared/shared.dart';

part 'packages_view_state.freezed.dart';

@freezed
class PackagesViewState with _$PackagesViewState {
  const factory PackagesViewState({
    required ListApi packages,
  }) = _PackagesViewState;
}
