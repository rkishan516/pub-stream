import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'environment_config_service.g.dart';

@Riverpod(keepAlive: true)
EnvironmentConfigService environmentConfig(Ref ref) {
  return EnvironmentConfigService();
}

class EnvironmentConfigService {
  // EnvironmentConfigService - variables
  final endpoint = const String.fromEnvironment(
    'ENDPOINT',
    defaultValue: 'http://localhost:8080',
  );
}
