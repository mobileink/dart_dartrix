# simple annotation demo

Defines a single annotation, "@version", that generates a version string.

```
$ dtsnew :dart annotations
$ cd myannotations
$ pub get
$ pub run build_runner build
$ dart example/main.dart
$ mkdir bin
$ dart2native example/main.dart -o bin/main
$ .bin/main
```

[build.yaml](https://github.com/dart-lang/build/blob/master/docs/build_yaml_format.md) format.

