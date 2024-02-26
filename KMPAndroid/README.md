KMP Android
-----------

First:
```
./gradlew :shared:linkDebugFrameworkIosSimulatorArm64
```

Then run the Flutter App.

Uses `MethodChannel` to bridge to the generated Framework.

Could probably use ffigen instead:
https://pub.dev/packages/ffigen
https://dart.dev/guides/libraries/objective-c-interop