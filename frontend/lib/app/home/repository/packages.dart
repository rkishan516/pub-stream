import 'dart:convert';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pubstream/app/common/services/environment_config_service.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:http/http.dart' as http;
import 'package:shared/shared.dart';

part 'packages.g.dart';

@riverpod
PackageRepository homePackageRepository(Ref ref) {
  return PackageRepository(ref: ref);
}

class PackageRepository {
  final Ref ref;
  PackageRepository({required this.ref});

  Future<ListApi> getTopPackages() async {
    final resposne = await http.get(
      Uri.parse(
        '${ref.read(environmentConfigProvider).endpoint}/webapi/packages',
      ),
    );
    final body = json.decode(resposne.body) as Map<String, dynamic>;

    return ListApi.fromJson(body);
  }
}
