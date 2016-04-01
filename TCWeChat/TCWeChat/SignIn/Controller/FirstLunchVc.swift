//
//  FirstLunchVc.swift
//  TCWeChat
//
//  Created by ctc on 16/4/1.
//  Copyright © 2016年 ctc. All rights reserved.
//

import UIKit

class FirstLunchVc: ViewController {
    @IBOutlet weak var imageView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()

        
        switch AppTool.screenSize() {
        case .inch_35:
            imageView.image = UIImage(named: "LaunchImage@2x")
        case .inch_40:
            imageView.image = UIImage(named: "LaunchImage-568h@2x")
        case .inch_47:
            imageView.image = UIImage(named: "LaunchImage-800-667h@2x")
        case .inch_55:
            imageView.image = UIImage(named: "LaunchImage-800-Portrait-736h@3x")
        default:
            break
        }
    }
    
    override func prefersStatusBarHidden() -> Bool {
        return true
    }
    
    @IBAction func signIn(sender: UIButton) {
        presentViewController(TabBarController(), animated: true, completion: nil)
    }
    
}
