//
//  _242_有效的字母异位词.swift
//  Leetcode
//
//  Created by 李小争 on 2020/7/27.
//  Copyright © 2020 Logan. All rights reserved.
//

import Cocoa

class _242_________: NSObject {

}

func isAnagram(_ s: String, _ t: String) -> Bool {
    let m = s.count
    let n = t.count
    if m != n {
        return false
    }
    var map:[String.Element:Int] = [:]
    for char in s {
        if let value = map[char] {
            map[char] = value + 1
        }else {
            map[char] = 1
        }
    }
    for char in t {
        if let value = map[char], value > 0 {
            map[char] = value - 1
        }else {
            return false
        }
    }
    return true
}
