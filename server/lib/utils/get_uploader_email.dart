import 'dart:io';

import 'package:dart_frog/dart_frog.dart';
import 'package:googleapis/oauth2/v2.dart';
import 'package:http/http.dart' as http;

Future<String> getUploaderEmail(RequestContext context) async {
  final authHeader = context.request.headers[HttpHeaders.authorizationHeader];
  if (authHeader == null) throw Exception('missing authorization header');
  final token = authHeader.split(' ').last;

  final info = await Oauth2Api(http.Client()).tokeninfo(accessToken: token);
  if (info.email == null) throw Exception('fail to get google account email');
  return info.email!;
}
