import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shared/shared.dart';

part 'package_home_view_state.freezed.dart';

@freezed
class PackageHomeViewState with _$PackageHomeViewState {
  const factory PackageHomeViewState({
    required WebapiDetailView detailView,
  }) = _PackageHomeViewState;
}
