import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shared/shared.dart';

part 'page_state.freezed.dart';

@freezed
class HomePageState with _$HomePageState {
  const factory HomePageState({
    required ListApi packages,
  }) = _HomePageState;
}
