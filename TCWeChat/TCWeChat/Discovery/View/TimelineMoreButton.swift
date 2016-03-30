//
//  TimelineMoreButton.swift
//  TCWeChat
//
//  Created by ctc on 16/3/30.
//  Copyright © 2016年 ctc. All rights reserved.
//

import UIKit

class TimelineMoreButton: UIView {

    class func button(origin origin: CGPoint?)->TimelineMoreButton {
        let btn = TimelineMoreButton.init(frame: CGRect(x: origin!.x, y: origin!.y, width: 180, height: 39))
        let iv = UIImageView(frame: btn.bounds)
        iv.image = UIImage(named: "AlbumOperateMoreViewBkg")
        btn.addSubview(iv)
        
        //分割线
        let line = UIView(frame: CGRect(x: 180/2.0-0.25, y:39/2.0-12.5, width: 0.5, height: 25))
        line.backgroundColor = UIColor(red: 56/255.0, green: 61/255.0, blue: 64/255.0, alpha: 1.0)
        btn.addSubview(line)
        
        //赞
        let zan = UIButton(type: UIButtonType.Custom)
        zan.frame = CGRect(x: 0, y: 0, width: 90, height: 39)
        zan.setImage(UIImage(named: "AlbumLike"), forState: UIControlState.Normal)
        zan.setTitle("赞", forState: UIControlState.Normal)
        zan.titleLabel?.font = UIFont.systemFontOfSize(13)
        zan.titleEdgeInsets = UIEdgeInsetsMake(0, 1, 0, 0)
        zan.imageEdgeInsets = UIEdgeInsetsMake(0, -6, 0, 0)
        btn.addSubview(zan)
        //评论
        let comment = UIButton(type: UIButtonType.Custom)
        comment.frame = CGRect(x: 90, y: 0, width: 90, height: 39)
        comment.setImage(UIImage(named: "AlbumDetailsPgeSingle"), forState: UIControlState.Normal)
        comment.setTitle("评论", forState: UIControlState.Normal)
        comment.titleLabel?.font = UIFont.systemFontOfSize(13)
        comment.titleEdgeInsets = UIEdgeInsetsMake(0, 1, 0, 0)
        comment.imageEdgeInsets = UIEdgeInsetsMake(0, -6, 0, 0)
        btn.addSubview(comment)
        
        return btn
    }

}
