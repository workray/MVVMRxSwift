//
//  AppDelegate.swift
//  MVVMRxSwift
//
//  Created by Mobdev125 on 2/12/18.
//  Copyright © 2018 Mobdev125. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        let window = UIWindow(frame: UIScreen.main.bounds)
        
        Application.shared.configureMainInterface(in: window)
        
        self.window = window
        return true
    }

}

