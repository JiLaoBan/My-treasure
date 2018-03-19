//
//  WelcomeController.swift
//  swiftTest
//
//  Created by huizhongcy on 2017/11/1.
//  Copyright © 2017 huizhongcy. All rights reserved.
//

import UIKit
class WelcomeController: UIViewController {
    var welocmeview:UIScrollView?
    override func viewDidLoad() {
        super.viewDidLoad()
         welocmeview = UIScrollView()
         welocmeview?.contentSize = CGSize(width:375, height:660)
         welocmeview?.isPagingEnabled = true
         self.view.addSubview(welocmeview!)
        
         for i in 1...5 {
//            imageview.image = UIImage(named:String(format:"guide_%d",i))
//            welocmeview?.addSubview(imageview)
         }
        
        // Do any additional setup after loading the view.
    }

}
