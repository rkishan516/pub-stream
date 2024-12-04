import 'package:pubstream/app/home/repository/packages.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:pubstream/app/home/state/page_state.dart';

part 'page_notifier.g.dart';

@riverpod
class HomePageNotifier extends _$HomePageNotifier {
  @override
  Future<HomePageState> build() async {
    return HomePageState(
      packages: await ref.read(homePackageRepositoryProvider).getTopPackages(),
    );
  }
}
