//
//  _198_打家劫舍.swift
//  Leetcode
//
//  Created by 李小争 on 2020/7/6.
//  Copyright © 2020 Logan. All rights reserved.
//

import Cocoa

class _198_____: NSObject {

}
func rob(_ nums: [Int]) -> Int {
    if nums.isEmpty {
        return 0
    }
    if nums.count == 1 {
        return nums[0]
    }
    
    let length = nums.count
    var dp:[Int] = Array<Int>(repeating: 0, count: length)
//    var dp = nums
//    for i in 0..<length {
//        dp[i] = 0
//    }
    dp[0] = nums[0]
    dp[1] = max(nums[0], nums[1])
    
    for i in 2..<length {
        dp[i] = max(dp[i-2] + nums[i], dp[i-1])
    }
    return dp[length-1]
}
