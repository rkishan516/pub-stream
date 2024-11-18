import 'dart:io';

import 'package:dart_frog/dart_frog.dart';
import '../../static/index.html.dart' as index_html;

Response onRequest(RequestContext context) {
  return Response(
    body: index_html.content,
    headers: {HttpHeaders.contentTypeHeader: ContentType.html.mimeType},
  );
}
