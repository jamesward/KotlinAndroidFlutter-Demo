import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter_app/generated_bindings.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // todo: how to load better?
  const dlPath =
      '/Users/jw/Desktop/KotlinAndroidFlutter-Demo/KMPAndroid/shared/build/bin/iosSimulatorArm64/debugFramework/Shared.framework/Shared';

  final dynlib = DynamicLibrary.open(dlPath);
  final nativeLib = NativeLibrary(dynlib);
  final platform = SharedIOSPlatform.new1(nativeLib);
  final name = platform.name.toString();
  runApp(MyApp(name));
}

class MyApp extends StatelessWidget {
  final String name;
  const MyApp(this.name, {super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Center(child: Text(name)),
    );
  }
}