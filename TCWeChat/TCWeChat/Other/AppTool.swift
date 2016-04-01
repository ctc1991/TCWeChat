//
//  AppTool.swift
//  TCWeChat
//
//  Created by ctc on 16/4/1.
//  Copyright © 2016年 ctc. All rights reserved.
//

import UIKit
import Foundation

enum ScreenSize {
    case inch_35,inch_40,inch_47,inch_55,inch_iPad
}

class AppTool {
    
    class func screenSize() -> ScreenSize {
        if UIScreen.mainScreen().bounds.size.height == 480 {
            return ScreenSize.inch_35
        } else if UIScreen.mainScreen().bounds.size.height == 568 {
            return ScreenSize.inch_40
        } else if UIScreen.mainScreen().bounds.size.height == 667 {
            return ScreenSize.inch_47
        } else if UIScreen.mainScreen().bounds.size.height == 736 {
            return ScreenSize.inch_55
        } else {
            return ScreenSize.inch_iPad
        }
    }
}