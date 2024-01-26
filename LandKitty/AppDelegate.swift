//
//  AppDelegate.swift
//  LandKitty
//
//  Created by Fatima Ramirez on 14/01/24.
//

import UIKit
import FirebaseCore

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        FirebaseApp.configure()
        
        let navigation = UINavigationController()
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.rootViewController = navigation
        window?.makeKeyAndVisible()
        navigation.isNavigationBarHidden = false
        
        let x = HomeMain.createModule(navigation: navigation)
        navigation.pushViewController(x, animated: true)
        return true
    }

    // MARK: UISceneSession Lifecycle



}

