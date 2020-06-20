//
//  _9_回文数.swift
//  Leetcode
//
//  Created by 李小争 on 2020/6/20.
//  Copyright © 2020 Logan. All rights reserved.
//

import Cocoa

class _9____: NSObject {

}
func isPalindrome(_ x: Int) -> Bool {
    if x < 0 {
        return false
    }
    let chars = Array("\(x)")
    var left = 0
    var right = chars.count - 1
    
    while left <= right {
        
        if chars[left] == chars[right] {
            left += 1
            right -= 1
        }else {
            return false
        }
    }
    return true
}
