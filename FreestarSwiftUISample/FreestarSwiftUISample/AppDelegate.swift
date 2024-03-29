//
//  AppDelegate.swift
//  SPM-Test
//
//  Created by Dean Chang on 8/10/22.
//

import Foundation
import UIKit
import FreestarAds

class AppDelegate: NSObject, UIApplicationDelegate {
//    static let FREESTAR_API_KEY = "37f63777-6e63-42f2-89b7-4b67689c2493"
    static let FREESTAR_API_KEY = "XqjhRR"
    var window : UIWindow?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
                
        Freestar.setLoggingEnabled(true)
        Freestar.setTestModeEnabled(true)
        Freestar.setAdaptiveBannerEnabledIfAvailable(false)
        Freestar.initWithAppKey(AppDelegate.FREESTAR_API_KEY)
        
        Freestar.requestAppOpenAds(withPlacement: "interstitial_p1", waitScreen: true) { placement, event, error in
            guard let error = error else {
                print(event)
                return
            }
            print("\(error)")
        }
                
        return true
    }
}
