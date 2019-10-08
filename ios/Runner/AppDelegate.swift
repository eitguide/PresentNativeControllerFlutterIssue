import UIKit
import Flutter

@UIApplicationMain
@objc class AppDelegate: FlutterAppDelegate {
  override func application(
    _ application: UIApplication,
    didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
  ) -> Bool {
    GeneratedPluginRegistrant.register(with: self)
    
    let flutterViewController = self.window.rootViewController as! FlutterViewController
    let nativeChannel = FlutterMethodChannel.init(name: "nghianv/present_controller_native", binaryMessenger: flutterViewController.binaryMessenger)
    
    nativeChannel.setMethodCallHandler { [weak self] (methodCall, result) in
        guard let self = self else { return }
        if(methodCall.method == "presentController") {
            let testViewController = TestViewController()
            self.window.rootViewController?.present(testViewController, animated: true, completion: nil)
            result(nil)
        }
    }

    
    return super.application(application, didFinishLaunchingWithOptions: launchOptions)
  }
}
