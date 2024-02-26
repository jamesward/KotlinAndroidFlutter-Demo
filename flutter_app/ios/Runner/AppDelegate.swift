import UIKit
import Flutter
import Shared

@UIApplicationMain
@objc class AppDelegate: FlutterAppDelegate {
    
    var platformName = Platform_iosKt.getPlatform().name
    
  override func application(
    _ application: UIApplication,
    didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
  ) -> Bool {
      let controller : FlutterViewController = window?.rootViewController as! FlutterViewController
      let platformChannel = FlutterMethodChannel(name: "com.example.kmpandroid.shared/platform",
                                                    binaryMessenger: controller.binaryMessenger)
      
      platformChannel.setMethodCallHandler({
            (call: FlutterMethodCall, result: @escaping FlutterResult) -> Void in
          guard call.method == "getName" else {
              result(FlutterMethodNotImplemented)
              return
            }
          
          // not sure if this is calling the right thing as it seems just getPlatform() should have worked
          result(String(Platform_iosKt.getPlatform().name))
          })
      
      
    GeneratedPluginRegistrant.register(with: self)
      
    return super.application(application, didFinishLaunchingWithOptions: launchOptions)
  }
}
