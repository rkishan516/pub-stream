import 'dart:convert';
import 'dart:io';

import 'package:dart_frog/dart_frog.dart';
import 'package:pub_semver/pub_semver.dart' as semver;
import 'package:server/models/pubstream_version.dart';
import 'package:server/stores/meta_store.dart';
import 'package:server/utils/resolve_url.dart';

import '../../../_middleware.dart';

Future<Response> onRequest(
  RequestContext context,
  String name,
) async {
  final metaStore = await context.read<Future<MetaStore>>();
  final package = await metaStore.queryPackage(name);

  if (package == null) {
    final envConfig = context.read<EnvironmentConfig>();
    return Response(
      statusCode: HttpStatus.found,
      headers: {
        'location': Uri.parse(envConfig.upstream)
            .resolve('/api/packages/$name')
            .toString(),
      },
    );
  }

  final versions = List<PubStreamVersion>.from(package.versions)
    ..sort(
      (a, b) => semver.Version.prioritize(
        semver.Version.parse(a.version),
        semver.Version.parse(b.version),
      ),
    );

  final versionMaps = versions
      .map(
        (item) => _versionToJson(
          item,
          context,
        ),
      )
      .toList();

  return Response(
    body: json.encode(
      {
        'name': name,
        'latest': versionMaps.last,
        'versions': versionMaps,
      },
    ),
  );
}

Map<String, dynamic> _versionToJson(
  PubStreamVersion item,
  RequestContext context,
) {
  final name = item.pubspec['name'] as String;
  final version = item.version;
  return {
    'archive_url': resolveUrl(
      context,
      '/packages/$name/versions/$version.tar.gz',
    ),
    'pubspec': item.pubspec,
    'version': version,
  };
}
