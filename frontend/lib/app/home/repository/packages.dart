import 'dart:convert';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pubstream/app/common/services/environment_config_service.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:http/http.dart' as http;
import 'package:shared/shared.dart';

part 'packages.g.dart';

@riverpod
PackageRepository packageRepository(Ref ref) {
  return DummyPackageRepositry(ref: ref);
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

class DummyPackageRepositry extends PackageRepository {
  DummyPackageRepositry({required super.ref});

  @override
  Future<ListApi> getTopPackages() async {
    return ListApi(count: 10, packages: [
      for (int i = 0; i < 10; i++)
        ListApiPackage(
          name: 'Hello$i',
          latest: 'V1.0.$i',
          updatedAt: DateTime.now(),
          description:
              'Something something lorem ipsum is latest  and its required to show until 50 words and what not',
          tags: [
            'web',
            'android',
          ],
        ),
    ]);
  }
}
