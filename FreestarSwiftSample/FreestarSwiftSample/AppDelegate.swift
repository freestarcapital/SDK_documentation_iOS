//
//  AppDelegate.swift
//  FreestarSwiftSample
//
//  Created by Vdopia Developer on 3/27/20.
//  Copyright © 2020 Freestar. All rights reserved.
//

import UIKit
import FreestarAds

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    static let FREESTAR_API_KEY = "P8RIA3"
    
    var window : UIWindow?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        
        Freestar.initWithAdUnitID(AppDelegate.FREESTAR_API_KEY)
        
        let tabVC = UITabBarController()
        
        let fsVC = FullscreenAdViewController()
        fsVC.title = "Fullscreen"
        
        let bVC = BannerAdViewController()
        bVC.title = "Banner"
        
        let pVC = PrerollAdViewController()
        pVC.title = "Preroll"
        
        tabVC.viewControllers = [
            UINavigationController(rootViewController: fsVC),
            UINavigationController(rootViewController: bVC),
            UINavigationController(rootViewController: pVC)
        ]
        
        window = UIWindow()
        window?.frame = UIScreen.main.bounds
        window?.makeKeyAndVisible()
        window?.rootViewController = tabVC
        
        return true
    }

    

}

