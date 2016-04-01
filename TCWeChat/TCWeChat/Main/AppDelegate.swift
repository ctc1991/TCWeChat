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
        window = UIWindow(frame: UIScreen.mainScreen().bounds)
        window?.makeKeyAndVisible()
//        let root  = TabBarController()
        let root = UIStoryboard(name: "SignIn", bundle: nil).instantiateViewControllerWithIdentifier("FirstLunchVc")
        window?.rootViewController = root
        return true
    }

}

