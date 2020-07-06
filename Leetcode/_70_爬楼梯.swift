//
//  _70_爬楼梯.swift
//  Leetcode
//
//  Created by 李小争 on 2020/7/6.
//  Copyright © 2020 Logan. All rights reserved.
//

import Cocoa

class _70____: NSObject {

}
func climbStairs(_ n: Int) -> Int {
    // f(n) = f(n-1) + f(n-2)
//    if n <= 2 {
//        return n
//    }

    
//    var pre1 = 1
//    var pre2 = 2
//    for _ in 2..<n {
//        let cur = pre1 + pre2
//        pre2 = pre1
//        pre1 = cur
//    }
//    return pre1
    
    
    if n < 2 {
        return n
    }
    var dp = [Int](repeating: 0, count: n + 1)
    dp[0] = 1
    dp[1] = 1
    for i in 2...n {
        print(i)
        dp[i] = dp[i-1] + dp[i-2]
    }
    return dp[n]
}
