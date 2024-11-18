import 'dart:io';

import 'package:dart_frog/dart_frog.dart';

import 'package:pub_semver/pub_semver.dart' as semver;
import 'package:server/stores/meta_store.dart';

Future<Response> onRequest(
  RequestContext context,
  String type,
  String name,
) async {
  final queryParameters = context.request.uri.queryParameters;
  final metaStore = await context.read<Future<MetaStore>>();
  final package = await metaStore.queryPackage(name);

  if (package == null) {
    return Response(statusCode: HttpStatus.notFound, body: 'Not Found');
  }

  switch (type) {
    case 'v':
      final latest = semver.Version.primary(
        package.versions.map((pv) => semver.Version.parse(pv.version)).toList(),
      );

      final color = latest.major == 0 ? 'orange' : 'blue';

      return Response(
        statusCode: HttpStatus.found,
        headers: {
          'location': _getBadgeUrl(
            'pubstream',
            latest.toString(),
            color,
            queryParameters,
          ),
        },
      );
    case 'd':
      return Response(
        statusCode: HttpStatus.found,
        headers: {
          'location': _getBadgeUrl(
            'downloads',
            package.download.toString(),
            'blue',
            queryParameters,
          ),
        },
      );
    default:
      return Response(statusCode: HttpStatus.notFound, body: 'Not Found');
  }
}

String _getBadgeUrl(
  String label,
  String message,
  String color,
  Map<String, String> queryParameters,
) {
  final badgeUri = Uri.parse('https://img.shields.io/static/v1');
  return Uri(
    scheme: badgeUri.scheme,
    host: badgeUri.host,
    path: badgeUri.path,
    queryParameters: {
      'label': label,
      'message': message,
      'color': color,
      ...queryParameters,
    },
  ).toString();
}
