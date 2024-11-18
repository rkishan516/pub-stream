import 'dart:convert';
import 'dart:io';

import 'package:collection/collection.dart';
import 'package:dart_frog/dart_frog.dart';
import 'package:pub_semver/pub_semver.dart' as semver;
import 'package:server/models/models.dart';
import 'package:server/models/pubstream_version.dart';
import 'package:server/stores/meta_store.dart';
import 'package:server/utils/get_packages_tags.dart';

Future<Response> onRequest(
  RequestContext context,
  String name,
  String version,
) async {
  final metaStore = await context.read<Future<MetaStore>>();

  final package = await metaStore.queryPackage(name);
  if (package == null) {
    return _okWithJson({'error': 'package not exists'});
  }

  PubStreamVersion? packageVersion;
  if (version == 'latest') {
    packageVersion = package.versions.last;
  } else {
    packageVersion =
        package.versions.firstWhereOrNull((item) => item.version == version);
  }
  if (packageVersion == null) {
    return _okWithJson({'error': 'version not exists'});
  }

  final versions = package.versions
      .map((v) => DetailViewVersion(version: v.version, createdAt: v.createdAt))
      .toList()
    ..sort(
      (a, b) => semver.Version.prioritize(
        semver.Version.parse(b.version),
        semver.Version.parse(a.version),
      ),
    );

  final pubspec = packageVersion.pubspec;
  List<String?> authors;
  if (pubspec['author'] != null) {
    authors = RegExp('<(.*?)>')
        .allMatches(pubspec['author'] as String)
        .map((match) => match.group(1))
        .toList();
  } else if (pubspec['authors'] != null) {
    authors = List<String>.from(pubspec['authors'] as Iterable)
        .map((author) => RegExp('<(.*?)>').firstMatch(author)!.group(1))
        .toList();
  } else {
    authors = [];
  }

  final depMap = (pubspec['dependencies'] as Map? ?? {}).cast<String, String>();

  final data = WebapiDetailView(
    name: package.name,
    version: packageVersion.version,
    description: (packageVersion.pubspec['description'] ?? '').toString(),
    homepage: (packageVersion.pubspec['homepage'] ?? '').toString(),
    uploaders: package.uploaders,
    createdAt: packageVersion.createdAt,
    readme: packageVersion.readme,
    changelog: packageVersion.changelog,
    versions: versions,
    authors: authors,
    dependencies: depMap.keys.toList(),
    tags: getPackageTags(packageVersion.pubspec),
  );

  return _okWithJson({'data': data.toJson()});
}

Response _okWithJson(Map<String, dynamic> data) => Response(
      body: json.encode(data),
      headers: {
        HttpHeaders.contentTypeHeader: ContentType.json.mimeType,
        'Access-Control-Allow-Origin': '*',
      },
    );
