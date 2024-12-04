import 'package:pubstream/app/packages/repository/packages.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:pubstream/app/packages/state/package_home_view_state.dart';

part 'package_home_view_notifier.g.dart';

@riverpod
class PackageHomeNotifier extends _$PackageHomeNotifier {
  @override
  Future<PackageHomeViewState> build({
    required String packageName,
    String version = 'latest',
  }) async {
    return PackageHomeViewState(
      detailView: await ref.read(packageRepositoryProvider).getPackage(
            packageName: packageName,
            version: version,
          ),
    );
  }
}
