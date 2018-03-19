//
//  HomeButton.swift
//  swiftTest
//
//  Created by huizhongcy on 2018/3/16.
//  Copyright © 2018 huizhongcy. All rights reserved.
//

import Foundation
class HomeButton: UIButton {
    // 屏蔽按钮高亮效果
    override var isHighlighted: Bool{
        get{
            return false
        }
        set{
        }
    }
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    private func setupUI(){
        self.imageView?.contentMode = .center
        titleLabel?.textAlignment = .center
        titleLabel?.font = UIFont.systemFont(ofSize: 15)
        setTitleColor(UIColor.darkGray, for: UIControlState.normal)
    }
    override func layoutSubviews() {
        super.layoutSubviews()
        imageView?.frame = CGRect(x: 0, y: 0, width: self.frame.width, height: self.frame.width)
        // 设置title
        titleLabel?.frame = CGRect(x: 0, y: self.frame.width, width: self.frame.width, height: self.frame.height - self.frame.width)
    }
    
}
