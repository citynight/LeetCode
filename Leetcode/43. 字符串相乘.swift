//
//  43.swift
//  Leetcode
//
//  Created by 李小争 on 2020/8/13.
//  Copyright © 2020 Logan. All rights reserved.
//

import Cocoa

class _3: NSObject {

}
func multiply(_ num1: String, _ num2: String) -> String {
   
    let number1 = NSDecimalNumber(string: num1)
    let number2 = NSDecimalNumber(string: num2)
    let value = number1.multiplying(by: number2)
    
    return "\(value.int64Value)"
}
