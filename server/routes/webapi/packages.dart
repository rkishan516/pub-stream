import 'dart:convert';
import 'dart:io';

import 'package:dart_frog/dart_frog.dart';
import 'package:server/stores/meta_store.dart';
import 'package:server/utils/get_packages_tags.dart';
import 'package:shared/shared.dart';

Future<Response> onRequest(RequestContext context) async {
  final params = context.request.uri.queryParameters;
  final size = int.tryParse(params['size'] ?? '') ?? 10;
  final page = int.tryParse(params['page'] ?? '') ?? 0;
  final sort = params['sort'] ?? 'download';
  final q = params['q'];

  String? keyword;
  String? uploader;
  String? dependency;

  if (q == null) {
  } else if (q.startsWith('email:')) {
    uploader = q.substring(6).trim();
  } else if (q.startsWith('dependency:')) {
    dependency = q.substring(11).trim();
  } else {
    keyword = q;
  }

  final metaStore = await context.read<Future<MetaStore>>();

  final result = await metaStore.queryPackages(
    size: size,
    page: page,
    sort: sort,
    keyword: keyword,
    uploader: uploader,
    dependency: dependency,
  );

  final data = ListApi(
    count: result.count,
    packages: result.packages.map((package) {
      return ListApiPackage(
        name: package.name,
        description: package.versions.last.pubspec['description'] as String?,
        tags: getPackageTags(package.versions.last.pubspec),
        latest: package.versions.last.version,
        updatedAt: package.updatedAt,
      );
    }).toList(),
  );

  return Response(
    headers: {
      HttpHeaders.contentTypeHeader: ContentType.json.mimeType,
      'Access-Control-Allow-Origin': '*',
    },
    body: json.encode(data.toJson()),
  );
}
