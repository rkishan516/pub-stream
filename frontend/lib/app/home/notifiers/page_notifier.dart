import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pubstream/app/home/repository/packages.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:pubstream/app/home/state/page_state.dart';
import 'package:shared/shared.dart';

part 'page_notifier.g.dart';

@riverpod
class HomePageNotifier extends _$HomePageNotifier {
  @override
  HomePageState build() {
    return const HomePageState(packageFieldName: '');
  }

  void updateFieldName(String packageName) {
    state = state.copyWith(packageFieldName: packageName);
  }
}

@riverpod
Future<ListApi> packagesList(Ref ref) {
  return ref.read(packageRepositoryProvider).getTopPackages();
}
