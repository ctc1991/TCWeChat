//
//  PersonalInfoVc.swift
//  TCWeChat
//
//  Created by ctc on 16/3/31.
//  Copyright © 2016年 ctc. All rights reserved.
//

import UIKit

class PersonalInfoVc: ViewController,
    UITableViewDataSource,
UITableViewDelegate {

    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()

        title = "个人信息"
        setBackBtn(title: "我")
    }
    
    //data source
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 2
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        switch section {
        case 0:
            return 5
        case 1:
            return 3
        default:
            return 0
        }
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: UITableViewCellStyle.Value1, reuseIdentifier: "cell")
        cell.accessoryType = UITableViewCellAccessoryType.DisclosureIndicator
        switch indexPath.section*10+indexPath.row {
        case 00:
            cell.textLabel?.text = "头像"
            let iv = UIImageView(image: UIImage(named: "head"))
            iv.frame = CGRect(x: 0, y: 0, width: 64, height: 64)
            iv.layer.cornerRadius = 3.0
            iv.layer.borderWidth = 0.5
            iv.layer.borderColor = UIColor.lightGrayColor().CGColor
            iv.layer.masksToBounds = true
            cell.accessoryView = iv
        case 01:
            cell.textLabel?.text = "名字"
            cell.detailTextLabel?.text = "一拳超人"
        case 02:
            cell.textLabel?.text = "微信号"
            cell.detailTextLabel?.text = "cz123"
            cell.selectionStyle = UITableViewCellSelectionStyle.None
            cell.accessoryType = UITableViewCellAccessoryType.None
        case 03:
            cell.textLabel?.text = "我的二维码"
        case 04:
            cell.textLabel?.text = "我的地址"
        case 10:
            cell.textLabel?.text = "性别"
        case 11:
            cell.textLabel?.text = "地区"
        case 12:
            cell.textLabel?.text = "个性签名"
            cell.detailTextLabel?.text = "原来你是我最想留住的幸运。"
        default:
            break
        }
        return cell
    }
    
    //tableview delegate
    func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        if indexPath.section*10+indexPath.row == 00 {
            return 82.0
        }
        return 44.0
    }
    
    func tableView(tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        switch section {
        case 0:
            return 15
        default:
            return 20
        }
    }
    
    func tableView(tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
        return 0.01
    }


}
