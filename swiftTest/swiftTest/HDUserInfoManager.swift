//
//  HDUserInfoManager.swift
//  swiftTest
//
//  Created by huizhongcy on 2017/11/2.
//  Copyright © 2017 huizhongcy. All rights reserved.
//

import UIKit
import Foundation
let single = HDUserInfoManager()
    class HDUserInfoManager{
        fileprivate var loaded:Bool = false
        var username:String?
        static var shareInstance:HDUserInfoManager{
            return single
        }
        func load(){
            if !loaded {
                loaded = true
                
            }
        }
        
}
