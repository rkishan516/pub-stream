import 'dart:convert';
import 'dart:io';

import 'package:dart_frog/dart_frog.dart';

Future<Response> onRequest(RequestContext context) async {
  final error = context.request.uri.queryParameters['error'];
  if (error != null) {
    return Response(
      statusCode: HttpStatus.badRequest,
      headers: {HttpHeaders.contentTypeHeader: ContentType.json.mimeType},
      body: json.encode({
        'error': {'message': error},
      }),
    );
  }
  return Response(
    body: json.encode({
      'success': {'message': 'Successfully uploaded package.'},
    }),
    headers: {
      HttpHeaders.contentTypeHeader: ContentType.json.mimeType,
      'Access-Control-Allow-Origin': '*',
    },
  );
}
