import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:pubstream/app/routes/notifiers/app_router.dart';
import 'package:pubstream/app/routes/notifiers/app_routes.dart';

part 'page_notifier.g.dart';

@riverpod
class SplashPageNotifier extends _$SplashPageNotifier {
  @override
  void build() {
    return;
  }

  Future<void> runStartUpLogic() async {
    ref.read(navigatorProvider).goNamed(HomePageRoute.name);
  }
}
