//
//  NavigationController.swift
//  TCWeChat
//
//  Created by ctc on 16/3/16.
//  Copyright © 2016年 ctc. All rights reserved.
//

import UIKit

class NavigationController: UINavigationController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // 导航标题颜色
        self.navigationBar.titleTextAttributes = [NSForegroundColorAttributeName: UIColor.whiteColor(), NSFontAttributeName: UIFont.boldSystemFontOfSize(17.5)]
        // 导航颜色
        UINavigationBar.appearance().barTintColor = UIColor(red: 26.0/255.0, green: 26.0/255.0, blue: 31.0/255.0, alpha: 1.0)
    }

    func image(color color: UIColor?) ->UIImage {
        let rect = CGRect(x: 0, y: 0, width: 50, height: 50)
        UIGraphicsBeginImageContext(rect.size)
        let context = UIGraphicsGetCurrentContext()
        CGContextSetFillColorWithColor(context, color?.CGColor)
        CGContextFillRect(context, rect)
        let img = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        return img
    }
}
