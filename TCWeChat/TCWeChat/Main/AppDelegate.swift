//
//  AppDelegate.swift
//  TCWeChat
//
//  Created by ctc on 16/3/16.
//  Copyright © 2016年 ctc. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
        self.window = UIWindow(frame: UIScreen.mainScreen().bounds)
        self.window?.makeKeyAndVisible()
        let root  = TabBarController()
        self.window?.rootViewController=root
        return true
    }

}

