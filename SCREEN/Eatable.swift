//
//  Eatable.swift
//  SCREEN
//
//  Created by 张奥 on 2019/8/28.
//  Copyright © 2019年 张奥. All rights reserved.
//

import Foundation
import UIKit
protocol Eatable {
    func eat()
}

extension Eatable where Self : UIViewController{
    func eat() {
        view.backgroundColor = UIColor.yellow
    }
}
