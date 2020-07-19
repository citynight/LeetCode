//
//  312.swift
//  Leetcode
//
//  Created by 李小争 on 2020/7/19.
//  Copyright © 2020 Logan. All rights reserved.
//

import Cocoa

class _312: NSObject {

}

func maxCoins(_ nums: [Int]) -> Int {
    var ans = 0
    var origan = nums
    helper(&origan, coins: 0, ans: &ans)
    return ans
}

private func helper(_ nums:inout Array<Int>, coins:Int, ans:inout Int) {
    // boundary 边界条件
    if nums.count == 0 {
        ans = max(ans, coins)
        return
    }
    // search
    for i in 0..<nums.count {
        let tmp = nums[i]
        let delta = nums[i] * ( i - 1 < 0 ? 1 : nums[i-1]) * ( i + 1 > nums.count - 1 ? 1 : nums[i + 1])
        nums.remove(at: i)
        helper(&nums, coins: coins + delta, ans: &ans)
        // 回溯
        nums.insert(tmp, at: i)
    }
}
