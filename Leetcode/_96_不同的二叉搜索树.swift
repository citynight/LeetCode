//
//  _96_不同的二叉搜索树.swift
//  Leetcode
//
//  Created by 李小争 on 2020/7/15.
//  Copyright © 2020 Logan. All rights reserved.
//

import Cocoa

class _96_________: NSObject {

}
func numTrees(_ n: Int) -> Int {

    if n <= 1 {
        return 1
    }
    var dp:[Int] = Array<Int>(repeating: 0, count: n + 1)
    dp[0] = 1
    
    for i in 1...n {
        for j in 0..<i {
            dp[i] += (dp[j] * dp[i - 1 - j])
        }
    }
    return dp[n]
}
