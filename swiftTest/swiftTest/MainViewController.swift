//
//  MainViewController.swift
//  swiftTest
//
//  Created by huizhongcy on 2017/11/2.
//  Copyright © 2017年 huizhongcy. All rights reserved.
//

import UIKit

class MainViewController: UITabBarController,UITabBarControllerDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        p_initviewcontrols()
        setUpTabbar()
        if HDConstants.isIphoneX{
            print("是iPhoneX")
        }else{
            print("不是iPhoneX")
        }
        
        
    }
    func p_initviewcontrols(){
        let oneVC = JXOneVC()
        let twoVC = JXTwoVC()
        let threeVC = JXThreeVC()
        let fourVC = JXFourVC()
        let nav1 = JXNavVC.init(rootViewController: oneVC)
        let nav2 = JXNavVC.init(rootViewController: twoVC)
        let nav3 = JXNavVC.init(rootViewController: threeVC)
        let nav4 = JXNavVC.init(rootViewController: fourVC)
        let tabArray = [nav1,nav2,nav3,nav4]
        self.viewControllers = tabArray
    }
    fileprivate func setUpTabbar() {
        
        
    }
    override  func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        var frame = self.tabBar.frame
        frame.size.height = 49;
        frame.origin.y = self.view.frame.height - frame.size.height;
        self.tabBar.frame = frame
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

}
