KotlinAndroidFlutter-Demo
-------------------------

Uses ffigen.

First:
```
cd KMPAndroid
./gradlew :shared:linkDebugFrameworkIosSimulatorArm64
```

Update the path in `flutter_app/lib/main.dart`

Run ffigen:
```
dart run ffigen
```

Then run the Flutter App in `flutter_app`

