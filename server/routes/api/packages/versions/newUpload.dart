// ignore_for_file: deprecated_export_use

import 'dart:convert';
import 'dart:io';

import 'package:archive/archive.dart';
import 'package:collection/collection.dart';
import 'package:dart_frog/dart_frog.dart';
import 'package:http_parser/http_parser.dart';
import 'package:mime/mime.dart';
import 'package:server/stores/meta_store.dart';
import 'package:server/stores/package_store.dart';
import 'package:server/utils/get_uploader_email.dart';
import 'package:server/utils/load_yaml.dart';
import 'package:server/utils/resolve_url.dart';
import 'package:shared/shared.dart';

Future<Response> onRequest(RequestContext context) async {
  try {
    final uploader = await getUploaderEmail(context);

    final contentType = context.request.headers['content-type'];
    if (contentType == null) throw Exception('invalid content type');

    final mediaType = MediaType.parse(contentType);
    final boundary = mediaType.parameters['boundary'];
    if (boundary == null) throw Exception('invalid boundary');

    final transformer = MimeMultipartTransformer(boundary);
    MimeMultipart? fileData;

    // The map below makes the runtime type checker happy.
    // https://github.com/dart-lang/pub-dev/blob/19033f8154ca1f597ef5495acbc84a2bb368f16d/app/lib/fake/server/fake_storage_server.dart#L74

    final stream = context.request.bytes().map((a) => a).transform(transformer);
    await for (final part in stream) {
      if (fileData != null) continue;
      fileData = part;
    }

    final bb = await fileData!.fold(
      BytesBuilder(),
      (BytesBuilder byteBuilder, d) => byteBuilder..add(d),
    );
    final tarballBytes = bb.takeBytes();
    final tarBytes = const GZipDecoder().decodeBytes(tarballBytes);
    final archive = TarDecoder().decodeBytes(tarBytes);
    ArchiveFile? pubspecArchiveFile;
    ArchiveFile? readmeFile;
    ArchiveFile? changelogFile;

    for (final file in archive.files) {
      if (file.name == 'pubspec.yaml') {
        pubspecArchiveFile = file;
        continue;
      }
      if (file.name.toLowerCase() == 'readme.md') {
        readmeFile = file;
        continue;
      }
      if (file.name.toLowerCase() == 'changelog.md') {
        changelogFile = file;
        continue;
      }
    }

    if (pubspecArchiveFile == null) {
      throw Exception(
        'Did not find any pubspec.yaml file in upload. Aborting.',
      );
    }

    final pubspecYaml = utf8.decode(pubspecArchiveFile.content as List<int>);
    final pubspec = loadYamlAsMap(pubspecYaml)!;

    final name = pubspec['name'] as String;
    final version = pubspec['version'] as String;

    final metaStore = await context.read<Future<MetaStore>>();
    final packageStore = await context.read<Future<PackageStore>>();

    final package = await metaStore.queryPackage(name);

    // Package already exists
    if (package != null) {
      if (package.private == false) {
        throw Exception(
          '$name is not a private package. Please upload it to https://pub.dev',
        );
      }

      // Check uploaders
      if (package.uploaders.contains(uploader) == false) {
        throw Exception('$uploader is not an uploader of $name');
      }

      // Check duplicated version
      final duplicated =
          package.versions.firstWhereOrNull((item) => version == item.version);
      if (duplicated != null) {
        throw Exception('version invalid: $name@$version already exists.');
      }
    }

    // Upload package tarball to storage
    await packageStore.upload(name, version, tarballBytes);

    String? readme;
    String? changelog;
    if (readmeFile != null) {
      readme = utf8.decode(readmeFile.content as List<int>);
    }
    if (changelogFile != null) {
      changelog = utf8.decode(changelogFile.content as List<int>);
    }

    // Write package meta to database
    final pubStreamVersion = PubStreamVersion(
      version: version,
      pubspec: pubspec,
      pubspecYaml: pubspecYaml,
      uploader: uploader,
      readme: readme,
      changelog: changelog,
      createdAt: DateTime.now(),
    );
    await metaStore.addVersion(name, pubStreamVersion);

    return Response(
      statusCode: HttpStatus.found,
      headers: {
        HttpHeaders.contentTypeHeader: ContentType.json.mimeType,
        'Access-Control-Allow-Origin': '*',
        'location':
            resolveUrl(context, '/api/packages/versions/newUploadFinish'),
      },
    );
  } catch (err) {
    return Response(
      statusCode: HttpStatus.found,
      headers: {
        HttpHeaders.contentTypeHeader: ContentType.json.mimeType,
        'Access-Control-Allow-Origin': '*',
        'location': resolveUrl(
          context,
          '/api/packages/versions/newUploadFinish?error=$err',
        ),
      },
    );
  }
}
