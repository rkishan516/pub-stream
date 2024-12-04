import 'dart:convert';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pubstream/app/common/services/environment_config_service.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:http/http.dart' as http;
import 'package:shared/shared.dart';

part 'packages.g.dart';

@riverpod
PackageRepository packageRepository(Ref ref) {
  return PackageRepository(ref: ref);
}

class PackageRepository {
  final Ref ref;
  PackageRepository({required this.ref});

  Future<ListApi> getTopPackages({
    String? query,
    String? sort,
  }) async {
    final resposne = await http.get(
      Uri.parse(
        '${ref.read(environmentConfigProvider).endpoint}/webapi/packages?${query == null ? '' : 'q=$query&'}${sort == null ? '' : 'sort=$sort'}',
      ),
    );
    final body = json.decode(resposne.body) as Map<String, dynamic>;

    return ListApi.fromJson(body);
  }

  Future<WebapiDetailView> getPackage({
    required String packageName,
    String version = 'latest',
  }) async {
    final resposne = await http.get(
      Uri.parse(
        '${ref.read(environmentConfigProvider).endpoint}/webapi/package/$packageName/$version',
      ),
    );
    final body = json.decode(resposne.body) as Map<String, dynamic>;

    return WebapiDetailView.fromJson(body);
  }
}
