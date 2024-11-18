import 'dart:convert';
import 'dart:io';

import 'package:dart_frog/dart_frog.dart';
import 'package:server/stores/meta_store.dart';
import 'package:server/utils/get_uploader_email.dart';

Future<Response> onRequest(
  RequestContext context,
  String name,
) async {
  final body = await context.request.body();
  final email = Uri.splitQueryString(body)['email']!;
  final operatorEmail = await getUploaderEmail(context);
  final metaStore = await context.read<Future<MetaStore>>();
  final package = await metaStore.queryPackage(name);

  if (package?.uploaders.contains(operatorEmail) == false) {
    return Response(
      statusCode: HttpStatus.forbidden,
      headers: {HttpHeaders.contentTypeHeader: ContentType.json.mimeType},
      body: json.encode({
        'error': {'message': 'no permission'},
      }),
    );
  }
  if (package?.uploaders.contains(email) ?? false) {
    return Response(
      statusCode: HttpStatus.badRequest,
      headers: {HttpHeaders.contentTypeHeader: ContentType.json.mimeType},
      body: json.encode({
        'error': {'message': 'email already exists'},
      }),
    );
  }

  await metaStore.addUploader(name, email);
  return Response(
    body: json.encode({
      'success': {'message': 'uploader added'},
    }),
    headers: {
      HttpHeaders.contentTypeHeader: ContentType.json.mimeType,
      'Access-Control-Allow-Origin': '*',
    },
  );
}
