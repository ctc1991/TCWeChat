//
//  DiscoveryVc.swift
//  TCWeChat
//
//  Created by ctc on 16/3/30.
//  Copyright © 2016年 ctc. All rights reserved.
//

import UIKit

class DiscoveryVc: ViewController,
    UITableViewDataSource,
UITableViewDelegate {
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "发现"
        tableView.registerNib(UINib(nibName: "DiscoveryVcTCell", bundle: nil), forCellReuseIdentifier: "DiscoveryVcTCell")
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
            return 2
        case 2:
            return 1
        case 3:
            return 2
        default:
            return 0
        }
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("DiscoveryVcTCell", forIndexPath: indexPath) as! DiscoveryVcTCell
        switch indexPath.section*10 + indexPath.row {
        case 0:
            cell.titleLbl.text = "朋友圈"
            cell.iv.image = UIImage(named: "ff_IconShowAlbum")
        case 10:
            cell.titleLbl.text = "扫一扫"
            cell.iv.image = UIImage(named: "ff_IconQRCode")
        case 11:
            cell.titleLbl.text = "摇一摇"
            cell.iv.image = UIImage(named: "ff_IconShake")
        case 20:
            cell.titleLbl.text = "附近的人"
            cell.iv.image = UIImage(named: "ff_IconLocationService")
        case 30:
            cell.titleLbl.text = "购物"
            cell.iv.image = UIImage(named: "CreditCard_ShoppingBag")
        case 31:
            cell.titleLbl.text = "游戏"
            cell.iv.image = UIImage(named: "MoreGame")
        default:
            break
        }
        return cell
    }
    //tableview delegate
    func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
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
            pushForTabbarToSb(sb: "Discovery", vc: "TimelineVc")
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
