//
//  MeVc.swift
//  TCWeChat
//
//  Created by ctc on 16/3/30.
//  Copyright © 2016年 ctc. All rights reserved.
//

import UIKit

class MeVc: ViewController,
    UITableViewDataSource,
UITableViewDelegate {
    @IBOutlet weak var tableView: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "我"
        tableView.registerNib(UINib(nibName: "DiscoveryVcTCell", bundle: nil), forCellReuseIdentifier: "DiscoveryVcTCell")
        tableView.registerNib(UINib(nibName: "MeHeadTCell", bundle: nil), forCellReuseIdentifier: "MeHeadTCell")
    }
    
    //data source
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 4
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        switch section {
        case 0:
            return 1
        case 1:
            return 4
        case 2:
            return 1
        case 3:
            return 1
        default:
            return 0
        }
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        if indexPath.section == 0 {
            let cell = tableView.dequeueReusableCellWithIdentifier("MeHeadTCell", forIndexPath: indexPath) as! MeHeadTCell
            return cell
        }
        let cell = tableView.dequeueReusableCellWithIdentifier("DiscoveryVcTCell", forIndexPath: indexPath) as! DiscoveryVcTCell
        switch indexPath.section*10 + indexPath.row {
        case 10:
            cell.titleLbl.text = "相册"
            cell.iv.image = UIImage(named: "MoreMyAlbum")
        case 11:
            cell.titleLbl.text = "收藏"
            cell.iv.image = UIImage(named: "MoreMyFavorites")
        case 12:
            cell.titleLbl.text = "钱包"
            cell.iv.image = UIImage(named: "MoreMyBankCard")
        case 13:
            cell.titleLbl.text = "优惠券"
            cell.iv.image = UIImage(named: "ff_IconLocationService")
        case 20:
            cell.titleLbl.text = "表情"
            cell.iv.image = UIImage(named: "MoreExpressionShops")
        case 30:
            cell.titleLbl.text = "设置"
            cell.iv.image = UIImage(named: "MoreSetting")
        default:
            break
        }
        return cell
    }
    //tableview delegate
    func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        if indexPath.section == 0 {
            return 88.0
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
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        tableView.deselectRowAtIndexPath(indexPath, animated: false)
        switch indexPath.section*10 + indexPath.row {
        case 0:
            pushForTabbarToSb(sb: "Me", vc: "PersonalInfoVc")
            break
        case 10:
            //            "扫一扫"
            break
        case 11:
            //            "摇一摇"
            break
        case 20:
            //            "附近的人"
            break
        case 30:
            //            "购物"
            break
        case 31:
            //            "游戏"
            break
        default:
            break
        }
        
    }

}
