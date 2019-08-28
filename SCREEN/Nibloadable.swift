//
//  Nibloadable.swift
//  SCREEN
//
//  Created by 张奥 on 2019/8/28.
//  Copyright © 2019年 张奥. All rights reserved.
//

import Foundation

protocol Nibloadable {
    static func loadFromNib() -> Self
}

extension Nibloadable{
    static func loadFromNib() -> Self{
        return Bundle.main.loadNibNamed("\(self)", owner: nil, options: nil)?.first as! Self
    }
}
