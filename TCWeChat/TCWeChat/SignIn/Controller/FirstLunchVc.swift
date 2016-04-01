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

        imageView.image = UIImage(named: "LaunchImage-800-667h@2x")
    }

}
