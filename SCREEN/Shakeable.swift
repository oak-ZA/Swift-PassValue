//
//  Shakeable.swift
//  SCREEN
//
//  Created by 张奥 on 2019/8/28.
//  Copyright © 2019年 张奥. All rights reserved.
//

import Foundation
import UIKit

protocol Theprotocol {
    func method1()
}

extension Theprotocol{
    func method1(){
        print("from Theprotocol method1")
    }
    func method2(){
        print("from Theprotocol method2")
    }
}

struct Struct1: Theprotocol {
    func method1(){
        print("from Struct1 method1")
    }
    func method2(){
        print("from Struct1 method2")
    }
}
