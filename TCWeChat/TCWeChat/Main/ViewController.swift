//
//  ViewController.swift
//  TCWeChat
//
//  Created by ctc on 16/3/16.
//  Copyright © 2016年 ctc. All rights reserved.
//

import UIKit

class ViewController: UIViewController,
UIGestureRecognizerDelegate {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // 状态栏风格
        UIApplication.sharedApplication().setStatusBarStyle(UIStatusBarStyle.LightContent, animated: false)
        // 显示状态栏
        UIApplication.sharedApplication().setStatusBarHidden(false, withAnimation: UIStatusBarAnimation.None)
        // 右滑屏幕左侧边缘可返回
        self.navigationController!.interactivePopGestureRecognizer!.delegate = self;
    }
    
    func pushForTabbarToSb(sb sb: String?, vc: String?) {
        self.hidesBottomBarWhenPushed = true
        self.navigationController?.pushViewController(UIStoryboard(name: sb!, bundle: nil).instantiateViewControllerWithIdentifier(vc!), animated: true)
        self.hidesBottomBarWhenPushed = false
    }
    
    func setBackBtn(title title: String?) {
        let btn = UIButton(type: UIButtonType.Custom)
        btn.frame = CGRect(x: -7, y: 0, width: 46, height: 17.5)
        btn.setImage(UIImage(named: "fts_search_backicon"), forState: UIControlState.Normal)
        btn.addTarget(self, action: "backPreviousPage", forControlEvents: UIControlEvents.TouchUpInside)
        btn.setTitle(title, forState: UIControlState.Normal)
        btn.titleLabel?.font = UIFont.systemFontOfSize(15.5)
        btn.titleEdgeInsets = UIEdgeInsetsMake(0, -7, 0, 0)
        btn.imageEdgeInsets = UIEdgeInsetsMake(0, -14, 0, 0)
        let left = UIBarButtonItem(customView: btn)
        self.navigationItem.leftBarButtonItem = left

    }
    func backPreviousPage() {
        self.navigationController?.popViewControllerAnimated(true)
    }
    func setRightBtn(imageName imageName: String?, target: AnyObject?, action: Selector) {
        let btn = UIButton(type: UIButtonType.Custom)
        let img = UIImage(named: imageName!)
        btn.frame = CGRect(x: 0, y: 0, width: img!.size.width, height: img!.size.height)
        btn.setImage(img?.imageWithRenderingMode(UIImageRenderingMode.AlwaysOriginal), forState: UIControlState.Normal)
        btn.addTarget(target, action: action, forControlEvents: UIControlEvents.TouchUpInside)
        let right = UIBarButtonItem(customView: btn)
        self.navigationItem.rightBarButtonItem = right
    }
}

