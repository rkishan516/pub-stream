import 'package:dart_frog/dart_frog.dart';
import 'package:server/stores/file_store.dart';
import 'package:server/stores/meta_store.dart';
import 'package:server/stores/mongo_store.dart';
import 'package:server/stores/package_store.dart';

Handler middleware(Handler handler) {
  return handler
      .use(environmentConfigProvider())
      .use(mongoStoreProvider())
      .use(fileStoreProvider());
}

Middleware mongoStoreProvider() {
  return provider<Future<MetaStore>>((context) async {
    final store = MongoStore();
    await store.startDb();
    return store;
  });
}

Middleware fileStoreProvider() {
  return provider<Future<PackageStore>>((context) async {
    return FileStore('./packages/store/');
  });
}

Middleware environmentConfigProvider() {
  return provider<EnvironmentConfig>((context) {
    return EnvironmentConfig();
  });
}

class EnvironmentConfig {
  final upstream = const String.fromEnvironment(
    'UPSTREAM',
    defaultValue: 'https://pub.dev',
  );

  final dbUri = const String.fromEnvironment(
    'DB_URI',
    defaultValue: 'mongodb://localhost:27017/dart_pub',
  );
}
