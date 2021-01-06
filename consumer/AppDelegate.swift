//
//  AppDelegate.swift
//  consumer
//
//  Created by Lohan Marques on 16/12/20.
//

import UIKit
import Version

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        VideoQualityRouter().present(in: &self.window)

        // Testing Version import
        let someClass = SomeClass()
        print(someClass)

        //
        return true
    }
}
