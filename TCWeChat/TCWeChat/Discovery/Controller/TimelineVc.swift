//
//  TimelineVc.swift
//  TCWeChat
//
//  Created by ctc on 16/3/30.
//  Copyright © 2016年 ctc. All rights reserved.
//

import UIKit

class TimelineVc: ViewController {
    @IBOutlet var headerView: UIView!
    @IBOutlet weak var tableView: UITableView!
    
    @IBOutlet weak var headIv: UIImageView!
    @IBOutlet weak var headBackView: UIView!
    @IBOutlet weak var nicknameLbl: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "朋友圈"
        setBackBtn(title: "发现")
        setRightBtn(imageName: "barbuttonicon_Camera", target: self, action: "postNew")
        tableView.tableHeaderView = headerView
        tableView.tableFooterView = UIView()
        headBackView.layer.borderColor = UIColor(red: 205/255.0, green: 205/255.0, blue: 205/255.0, alpha: 1.0).CGColor
        headBackView.layer.borderWidth = 0.5
        
        let sd = TimelineMoreButton.button(origin: CGPoint(x: 30, y: 250))
        view.addSubview(sd)
        
        
        
    }
    
    func postNew() {
        
    }
    
}
