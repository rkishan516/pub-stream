import 'package:intl/intl.dart';
import 'package:mongo_dart/mongo_dart.dart';
import 'package:server/models/pubstream_package.dart';
import 'package:server/models/pubstream_query_result.dart';
import 'package:server/models/pubstream_version.dart';

import 'package:server/stores/meta_store.dart';

const packageCollection = 'packages';
const statsCollection = 'stats';

class MongoStore extends MetaStore {
  MongoStore();

  static const _dbUri = String.fromEnvironment(
    'DB_URI',
    defaultValue: 'mongodb://localhost:27017/dart_pub',
  );
  static final db = Db(_dbUri);

  @override
  Future<void> startDb() async {
    if (db.isConnected) return;
    await db.open();
  }

  //close the database
  @override
  Future<void> closeDb() async {
    if (!db.isConnected) return;
    await db.close();
  }

  static SelectorBuilder _selectByName(String? name) => where.eq('name', name);

  Future<PubStreamQueryResult> _queryPackagesBySelector(
    SelectorBuilder selector,
  ) async {
    final count = await db.collection(packageCollection).count(selector);
    final packages = await db
        .collection(packageCollection)
        .find(selector)
        .map(PubStreamPackage.fromJson)
        .toList();
    return PubStreamQueryResult(count: count, packages: packages);
  }

  @override
  Future<PubStreamPackage?> queryPackage(String name) async {
    final json =
        await db.collection(packageCollection).findOne(_selectByName(name));
    if (json == null) return null;
    return PubStreamPackage.fromJson(json);
  }

  @override
  Future<void> addVersion(String name, PubStreamVersion version) async {
    await db.collection(packageCollection).update(
          _selectByName(name),
          modify
              .push('versions', version.toJson())
              .addToSet('uploaders', version.uploader)
              .setOnInsert('createdAt', version.createdAt)
              .setOnInsert('private', true)
              .setOnInsert('download', 0)
              .set('updatedAt', version.createdAt),
          upsert: true,
        );
  }

  @override
  Future<void> addUploader(String name, String email) async {
    await db
        .collection(packageCollection)
        .update(_selectByName(name), modify.push('uploaders', email));
  }

  @override
  Future<void> removeUploader(String name, String email) async {
    await db
        .collection(packageCollection)
        .update(_selectByName(name), modify.pull('uploaders', email));
  }

  @override
  void increaseDownloads(String name, String version) {
    final today = DateFormat('yyyyMMdd').format(DateTime.now());
    db
        .collection(packageCollection)
        .update(_selectByName(name), modify.inc('download', 1));
    db
        .collection(statsCollection)
        .update(_selectByName(name), modify.inc('d$today', 1));
  }

  @override
  Future<PubStreamQueryResult> queryPackages({
    required int size,
    required int page,
    required String sort,
    String? keyword,
    String? uploader,
    String? dependency,
  }) async {
    var selector =
        where.sortBy(sort, descending: true).limit(size).skip(page * size);

    if (keyword != null) {
      selector = selector.match('name', '.*$keyword.*');
    }
    if (uploader != null) {
      selector = selector.eq('uploaders', uploader);
    }
    if (dependency != null) {
      selector = selector.raw(
        {
          'versions': {
            r'$elemMatch': {
              'pubspec.dependencies.$dependency': {
                r'$exists': true,
              },
            },
          },
        },
      );
    }

    return _queryPackagesBySelector(selector);
  }
}
