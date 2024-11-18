import 'dart:convert';
import 'dart:io';

import 'package:dart_frog/dart_frog.dart';
import 'package:server/utils/resolve_url.dart';

Response onRequest(RequestContext context) {
  return Response(
    body: json.encode({
      'url': resolveUrl(context, '/api/packages/versions/newUpload'),
      'fields': <String, String>{},
    }),
    headers: {
      HttpHeaders.contentTypeHeader: ContentType.json.mimeType,
      'Access-Control-Allow-Origin': '*',
    },
  );
}
