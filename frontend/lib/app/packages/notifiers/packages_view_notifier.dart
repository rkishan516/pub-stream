import 'package:pubstream/app/packages/repository/packages.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:pubstream/app/packages/state/packages_view_state.dart';

part 'packages_view_notifier.g.dart';

@riverpod
class PackagesNotifier extends _$PackagesNotifier {
  @override
  Future<PackagesViewState> build({String? query, String? sort}) async {
    return PackagesViewState(
      packages: await ref
          .read(packageRepositoryProvider)
          .getTopPackages(query: query, sort: sort),
    );
  }
}
