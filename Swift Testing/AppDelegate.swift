import UIKit

@UIApplicationMain

class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(application: UIApplication!, didFinishLaunchingWithOptions launchOptions: NSDictionary!) -> Bool {
        let newWindow = MBFingerTipWindow(frame: self.window!.frame)
        newWindow.rootViewController = self.window!.rootViewController
        self.window = newWindow

        return true
    }
}
