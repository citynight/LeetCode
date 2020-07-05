//
//  _44_通配符匹配.swift
//  Leetcode
//
//  Created by 李小争 on 2020/7/5.
//  Copyright © 2020 Logan. All rights reserved.
//

import Cocoa

class _44______: NSObject {

}
func isMatch(_ s: String, _ p: String) -> Bool {
    let S = Array(s)
    let P = Array(p)
    var sIndex = 0
    var pIndex = 0
    var match = 0
    var start = -1
    while sIndex < s.count {
        if pIndex < p.count && (S[sIndex] == P[pIndex] || P[pIndex] == "?") {
            sIndex += 1
            pIndex += 1
        }else if pIndex < p.count && P[pIndex] == "*" {
            start = pIndex
            match = sIndex
            pIndex += 1
        }else if start != -1 {
            pIndex = start + 1
            match += 1
            sIndex = match
        }else {
            return false
        }
    }
    
    // 判断最后都是 * 的情况
    while pIndex < p.count && P[pIndex] == "*" {
        pIndex += 1
    }
    
    return pIndex == p.count
}
