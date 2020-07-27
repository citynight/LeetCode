//
//  _392_判断子序列.swift
//  Leetcode
//
//  Created by 李小争 on 2020/7/27.
//  Copyright © 2020 Logan. All rights reserved.
//

import Cocoa

class _392______: NSObject {

}
func isSubsequence(_ s: String, _ t: String) -> Bool {
    var indexS = 0 // 短
    var indexT = 0
    let m = s.count
    let n = t.count
    if m == 0 {
        return true
    }
    if m > n {
        return false
    }
    let sList = Array(s)
    let tList = Array(t)
    while indexT < n && indexS < m {
        if tList[indexT] == sList[indexS] {
            if indexS == m - 1 {
                return true
            }
            indexS += 1
            indexT += 1
        }else {
            indexT += 1
        }
    }
    return false
}
