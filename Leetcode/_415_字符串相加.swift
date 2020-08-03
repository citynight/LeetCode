//
//  _415_字符串相加.swift
//  Leetcode
//
//  Created by 李小争 on 2020/8/3.
//  Copyright © 2020 Logan. All rights reserved.
//

import Cocoa

class _415______: NSObject {

}
func addStrings(_ num1: String, _ num2: String) -> String {
    var index1 = num1.count - 1
    var index2 = num2.count - 1
    let num1Chars = Array(num1)
    let num2Chars = Array(num2)
    var cuarry = 0
    var res:[String.Element] = []
    while(index1 >= 0 || index2 >= 0 || cuarry != 0) {
        if index1 >= 0 {
            cuarry += Int(String(num1Chars[index1]))!
            index1 -= 1
        }
        if index2 >= 0 {
            cuarry += Int(String(num2Chars[index2]))!
            index2 -= 1
        }
        res.append(String.Element("\(cuarry % 10)"))
        cuarry = cuarry/10
    }
    return String(res.reversed())
}
