import 'package:server/models/pubstream_package.dart';
import 'package:server/models/pubstream_query_result.dart';
import 'package:server/models/pubstream_version.dart';

abstract class MetaStore {
  Future<void> startDb();
  Future<void> closeDb();

  Future<PubStreamPackage?> queryPackage(String name);

  Future<void> addVersion(String name, PubStreamVersion version);

  Future<void> addUploader(String name, String email);

  Future<void> removeUploader(String name, String email);

  void increaseDownloads(String name, String version);

  Future<PubStreamQueryResult> queryPackages({
    required int size,
    required int page,
    required String sort,
    String? keyword,
    String? uploader,
    String? dependency,
  });
}
