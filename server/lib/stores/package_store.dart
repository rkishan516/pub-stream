import 'dart:async';

abstract class PackageStore {
  bool supportsDownloadUrl = false;

  FutureOr<String> downloadUrl(String name, String version) {
    throw UnimplementedError();
  }

  Stream<List<int>> download(String name, String version) {
    throw UnimplementedError();
  }

  Future<void> upload(String name, String version, List<int> content);
}
