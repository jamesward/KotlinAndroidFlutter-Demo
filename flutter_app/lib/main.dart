import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  MethodChannel platform = const MethodChannel('com.example.kmpandroid.shared/platform');
  var name = await platform.invokeMethod<String>('getName') ?? "no platform";
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
