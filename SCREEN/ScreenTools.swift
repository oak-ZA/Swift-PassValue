//
//  ScreenTools.swift
//  SCREEN
//
//  Created by 张奥 on 2019/8/20.
//  Copyright © 2019年 张奥. All rights reserved.
//

import Foundation
import UIKit

struct ScrennPix {
    var width = UIScreen.main.bounds.size.width
    var height = UIScreen.main.bounds.size.height
    
}

struct Center {
    var pointX = 0.0
    var pointY = 0.0
}
struct Size {
    var width = 0.0
    var height = 0.0
}
struct frame {
    var origin = Center()
    var originSize = Size()
    
}


 extension  frame{
    init(p: Center, s: Size){
        let origin_X = p.pointX - s.width/2.0
        let origin_Y = p.pointY - s.height/2.0
        self.init(origin: Center.init(pointX: origin_X, pointY: origin_Y), originSize: s)
    }
}


class LiveView: UIView {
    
    override init(frame: CGRect) {
        
        super.init(frame: frame)

    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    public  func initFrameParm(age:NSInteger , name:String , frame:CGRect) -> Void {
        self.frame = frame
        self.createBgView()
    }
    
    func createBgView() -> Void {
        let screenPix = ScrennPix()
        let screenWidth = screenPix.width;
        let screenHeight = screenPix.height;
        
       let bgView  = UIView.init(frame: CGRect(x: 0, y: screenHeight - 280.0, width: screenWidth, height: 280.0))
        bgView.backgroundColor = UIColor.red
        let animation = CATransition()
        animation.duration = 0.2
        animation.type = kCATransitionPush
        animation.subtype = kCATransitionFromTop
        bgView.layer.add(animation, forKey: "push")
        self.addSubview(bgView)
        
        let label = UILabel.init(frame: CGRect(x: 0, y: (bgView.frame.size.height - 40.0)/2.0, width: bgView.frame.size.width, height: 40))
        label.text = "中间的发现"
        label.textColor = UIColor.white
        label.textAlignment = NSTextAlignment.center
        label.font = UIFont.systemFont(ofSize: 15);
        bgView.addSubview(label)
        
    }
    
}
