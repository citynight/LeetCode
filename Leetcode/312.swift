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

func maxCoins1(_ nums: [Int]) -> Int {
    var ans = 0
    var origan = nums
    helper1(&origan, coins: 0, ans: &ans)
    return ans
}

private func helper1(_ nums:inout Array<Int>, coins:Int, ans:inout Int) {
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
        helper1(&nums, coins: coins + delta, ans: &ans)
        // 回溯
        nums.insert(tmp, at: i)
    }
}

private var dp:[[Int]]!
func maxCoins(_ nums: [Int]) -> Int {
    let len = nums.count
    var origan = nums
    // 前面添加1后面添加1
    origan.insert(1, at: 0)
    origan.append(1)
    
    dp = Array<[Int]>(repeating: Array<Int>(repeating: 0, count: len + 2), count: len + 2)
    return helper(origan, i: 1, j: len)
}

func helper(_ nums: [Int], i: Int,j: Int) -> Int {
    if i > j { return 0 }
    if dp[i][j] > 0 {
        return dp[i][j]
    }
    // search
    for k in i...j {
        let left = helper(nums, i: i, j: k - 1)
        let right = helper(nums, i: k + 1, j: j)
        let delta = nums[k] * nums[i - 1] * nums[j + 1]
        dp[i][j] = max(dp[i][j], left + right + delta)
    }
    return dp[i][j]
}
