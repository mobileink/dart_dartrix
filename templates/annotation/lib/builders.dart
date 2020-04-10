import 'dart:io';

import 'package:analyzer/dart/element/element.dart';
import 'package:build/build.dart';
import 'package:source_gen/source_gen.dart';
import 'package:yaml/yaml.dart';

import 'version.dart';

Builder versionBuilder(BuilderOptions options) {
  return SharedPartBuilder([VersionGenerator()], 'multiply');
}

class VersionGenerator extends GeneratorForAnnotation<Version> {
  @override
  String generateForAnnotatedElement(
    Element element, ConstantReader annotation, BuildStep buildStep) {
    var yaml = loadYamlFileSync('pubspec.yaml');
    return 'String version = \'${yaml["version"]}\';';
  }
}

Map loadYamlFileSync(String path) {
  var file = File(path);
  if (file?.existsSync() == true) {
    return loadYaml(file.readAsStringSync());
  }
  return null;
}
