import 'package:yaml/yaml.dart';

Object? convertYaml(dynamic value) {
  if (value is YamlMap) {
    return value.cast<String, dynamic>().map(
          (k, v) => MapEntry(
            k,
            convertYaml(v),
          ),
        );
  }
  if (value is YamlList) {
    return value.map(convertYaml).toList();
  }
  return value;
}

Map<String, dynamic>? loadYamlAsMap(String value) {
  final yamlMap = loadYaml(value) as YamlMap?;
  return (convertYaml(yamlMap) as Map?)?.cast<String, dynamic>();
}
