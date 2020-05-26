//
//  AppDelegate.swift
//  SwiftUI_NavigationViewCompleteGuide
//
//  Created by mohamed  habib on 25/05/2020.
//  Copyright © 2020 mohamed  habib. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {



    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
      
         //Customize navigation bar
               let appearance = UINavigationBarAppearance()
                appearance.configureWithOpaqueBackground()
                appearance.backgroundColor = .systemRed 
        
                let attrs: [NSAttributedString.Key: Any] = [
        
                    .foregroundColor: UIColor.white,
                    .font: UIFont.monospacedSystemFont(ofSize: 36, weight: .black)
        
                ]
               appearance.largeTitleTextAttributes = attrs
               UINavigationBar.appearance().scrollEdgeAppearance = appearance
                
        //        appearance.backgroundColor = .systemPink
        //        UINavigationBar.appearance().largeTitleTextAttributes = [
        //              .foregroundColor: UIColor.white,
        //                     .font : UIFont(name:"Helvetica Neue", size: 40)!
        //        ]
               
        
        return true
    }

    // MARK: UISceneSession Lifecycle

    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        // Called when a new scene session is being created.
        // Use this method to select a configuration to create the new scene with.
        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }

    func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
        // Called when the user discards a scene session.
        // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
        // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
    }


}

