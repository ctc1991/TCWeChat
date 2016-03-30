//
//  TabBarController.swift
//  TCWeChat
//
//  Created by ctc on 16/3/16.
//  Copyright © 2016年 ctc. All rights reserved.
//

import UIKit

class TabBarController: UITabBarController {

     override func viewDidLoad() {
        super.viewDidLoad()
        
        //创建tabbar的子控制器
        self.setSubVcs()
    }
    /**
     初始化子类
     */
    func setSubVcs(){
        self.addSubVc(sbName: "Message", vcId: "MessageVc", title: "微信", imageName: "tabbar_mainframe", selectedImageName: "tabbar_mainframeHL")
        self.addSubVc(sbName: "Contact", vcId: "ContactVc", title: "通讯录", imageName: "tabbar_contacts", selectedImageName: "tabbar_contactsHL")
        self.addSubVc(sbName: "Discovery", vcId: "DiscoveryVc", title: "发现", imageName: "tabbar_discover", selectedImageName: "tabbar_discoverHL")
        self.addSubVc(sbName: "Me", vcId: "MeVc", title: "我", imageName: "tabbar_me", selectedImageName: "tabbar_meHL")
        
    }
    /**
     添加一个子控制器
     */
    func addSubVc(sbName sbName: String?, vcId: String?, title: String?, imageName: String?, selectedImageName: String?) {
        let vc = UIStoryboard.init(name: sbName!, bundle: nil).instantiateViewControllerWithIdentifier(vcId!)
        let item : UITabBarItem = UITabBarItem (title: title, image: UIImage(named: imageName!)?.imageWithRenderingMode(UIImageRenderingMode.AlwaysOriginal), selectedImage: UIImage(named: selectedImageName!)?.imageWithRenderingMode(UIImageRenderingMode.AlwaysOriginal))
        item.setTitleTextAttributes([NSForegroundColorAttributeName:UIColor.init(red: 4/255.0, green: 176/255.0, blue: 15/255.0, alpha: 1.0)], forState:  UIControlState.Selected)
        vc.tabBarItem = item
        let navi = NavigationController.init(rootViewController: vc)
        self.addChildViewController(navi)
    }
}
