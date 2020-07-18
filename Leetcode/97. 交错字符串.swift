//
//  97.swift
//  Leetcode
//
//  Created by 李小争 on 2020/7/18.
//  Copyright © 2020 Logan. All rights reserved.
//

import Cocoa

class _97: NSObject {

}
func isInterleave(_ s1: String, _ s2: String, _ s3: String) -> Bool {
    // 如果长度不一致不能组成交错字符串
    if s1.count + s2.count != s3.count {
        return false
    }
    
    let aList = Array(s1)
    let bList = Array(s2)
    let cList = Array(s3)
    let m = s1.count
    let n = s2.count
    var dp = Array<[Bool]>(repeating: Array<Bool>(repeating: false, count: n + 1), count: m + 1)
    
    for i in (0...m).reversed() {
        for j in (0...n).reversed() {
            // 边界条件
            if i == m && j == n {
                // 如果能走到最后一定是相等的
                dp[i][j] = true
            } else if i == m {
                // s1匹配完但是s2还没有匹配完
                dp[i][j] = bList.suffix(from: j) == cList.suffix(from: i + j)
            } else if j == n {
                // s2匹配完但是s1还没有匹配完
                dp[i][j] = aList.suffix(from: i) == cList.suffix(from: i + j)
            } else {
                let a = aList[i]
                let b = bList[j]
                let c = cList[i + j]
                // 如果两个子串对应位置的字符一致
                if a == b {
                    if a == c { //如果一直
                        dp[i][j] = dp[i+1][j] || dp[i][j + 1]
                    }else {
                        return false
                    }
                }else {
                    if a == c {
                        dp[i][j] = dp[i + 1][j]
                    }else if b == c {
                        dp[i][j] = dp[i][j + 1]
                    }else {
                        return false
                    }
                }
            }
        }
    }
    return dp[0][0]
}
