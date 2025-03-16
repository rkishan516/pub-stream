import 'dart:convert';
import 'dart:io';

import 'package:dart_frog/dart_frog.dart';
import 'package:pub_semver/pub_semver.dart' as semver;
import 'package:server/stores/meta_store.dart';

Future<Response> onRequest(
  RequestContext context,
  String name,
) async {
  final metaStore = await context.read<Future<MetaStore>>();
  final package = await metaStore.queryPackage(name);
  if (package == null) {
    return Response(
      statusCode: HttpStatus.notFound,
      headers: {HttpHeaders.contentTypeHeader: ContentType.json.mimeType},
      body: json.encode(
        {
          'error': {
            'message': 'package not exists',
          },
        },
      ),
    );
  }

  final versions = package.versions.map((v) => v.version).toList()
    ..sort((a, b) {
      return semver.Version.prioritize(
        semver.Version.parse(b),
        semver.Version.parse(a),
      );
    });

  return Response(
    headers: {
      HttpHeaders.contentTypeHeader: ContentType.json.mimeType,
      'Access-Control-Allow-Origin': '*',
    },
    body: json.encode({
      'name': name,
      'versions': versions,
    }),
  );
}
