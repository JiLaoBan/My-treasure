//
//  ViewController.swift
//  swiftTest
//
//  Created by huizhongcy on 2017/5/31.
//  Copyright © 2017 huizhongcy. All rights reserved.
//

import UIKit
class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        

        
    
        
        let positbtn = UIButton (type: UIButtonType.custom)
        positbtn.backgroundColor = UIColor.white
        positbtn.setTitle("阿浅", for: UIControlState.normal)
        positbtn.layer.cornerRadius = 5
        positbtn.setTitleColor(UIColor.blue, for: UIControlState.normal)
        positbtn.layer.borderColor = HDConstants.HDColor(30, g: 190, b: 120, a: 1).cgColor
        positbtn.layer.borderWidth = 10
        positbtn.frame =  HDConstants.HDFrame(0, y: 300, width: HDConstants.HDSCREENWITH, height: 122)
        positbtn.addTarget(self, action: #selector(cancel), for: UIControlEvents.touchUpInside)
        self.view.addSubview(positbtn)
        if HDConstants.isIphoneX{
            print("是iPhoneX")
        }else{
            print("不是iPhoneX")
        }
        
        let str = "Hello, playground"
        // Swift3.0
        var index = str.index(of: " ")!
        _ = str[str.startIndex ..< index]
        index = str.index(index, offsetBy: 1) // index 下标 +1
        _ = str[index ..< str.endIndex]
        // Swift4.0
        var index1 = str.index(of: " ")!
        let greeting1 = str.prefix(upTo: index1)
        print("阿浅",greeting1)
        index1 = str.index(index1, offsetBy: 2)
        let name1 = str.suffix(from: index1)
        print("阿浅",name1)
       // print(Array(str.enumerated()))
       // print(Array(zip(1..., str)))
        

        view.backgroundColor  = UIColor.white
        var a = 42
        a = 53
        //print("你就开始当",a)
        let label1 = UILabel()
        self.view .addSubview(label1)
        label1.text = "新建的"
        label1.backgroundColor = UIColor.blue
        label1.backgroundColor = CoreUtils.HDfromHexValue()
        label1.textAlignment = NSTextAlignment.center
        label1.mas_makeConstraints { (MASConstraintMaker) -> Void in
            let make = MASConstraintMaker
            make!.left.mas_equalTo()(15)
            make?.right.mas_equalTo()(self.view.mas_right)?.setOffset(-15)
            make?.height.mas_equalTo()(45)
            make?.top.mas_equalTo()(300)
        }
        // Do any additional setup after loading the view, typically from a nib.
    }
    @objc func cancel(){
         print("云隐莲月")
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

