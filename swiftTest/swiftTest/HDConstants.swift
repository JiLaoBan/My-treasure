//
//  HDColor.swift
//  swiftTest
//
//  Created by huizhongcy on 2017/11/3.
//  Copyright © 2017年 huizhongcy. All rights reserved.
//

import UIKit
func __FONT(x:CGFloat) -> UIFont {
    return UIFont.systemFont(ofSize:x)
}
class HDConstants: NSObject {
    /**
     *   当前设备屏幕的宽带
     **/
    static let HDSCREENWITH = UIScreen.main.bounds.width

    /**
     *   当前设备屏幕的高度
     **/
    static let HDSCREENHEIGHT = UIScreen.main.bounds.height
   // #define isIphoneX   CGRectEqualToRect([UIScreen mainScreen].bounds, CGRectMake(0, 0, 375, 812))
    static let isIphoneX = UIScreen.main.bounds.height > 700
    
    
    static func HDFrame(_ x:CGFloat,y:CGFloat,width:CGFloat,height:CGFloat)->CGRect{
        return CGRect (x: x, y: y, width: width, height: height)
    }
    static func HDColor(_ r:CGFloat,g:CGFloat,b:CGFloat,a:CGFloat)->UIColor{
        return UIColor (red: r/255.0, green: g/255.0, blue: b/255.0, alpha: a);
        
    }
}
