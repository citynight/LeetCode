//
//  _1343_大小为 K 且平均值大于等于阈值的子数组数目.swift
//  Leetcode
//
//  Created by 李小争 on 2020/8/3.
//  Copyright © 2020 Logan. All rights reserved.
//

import Cocoa

class _1343_____K_________________: NSObject {

}
// 超时
func numOfSubarrays1(_ arr: [Int], _ k: Int, _ threshold: Int) -> Int {
    let count = arr.count
    var res = 0
    if count < k {
        return res
    }
    var left = 0
    var right = left + k - 1
    while (right < count) {
        let rangeValue = arr[left...right].reduce(0) {
            return $0 + $1
        }
        if rangeValue / k >= threshold {
            res += 1
        }
        left += 1
        right = left + k - 1
    }
    return res
}
func numOfSubarrays(_ arr: [Int], _ k: Int, _ threshold: Int) -> Int {
    var sums = 0 // 子数组的和
    var nums = 0 // 符合条件的子数组个数
    let len = arr.count
    let target = k * threshold
    if len < k { return 0 }
    for i in 0..<k {
        sums += arr[i]
    }
    // 如果初始子数组就满足条件，nums加1
    if sums >= target {
        nums += 1
    }
    
    for i in k..<len {
        // 这两步是整个算法的关键
        // 新子数组和计算，即老子数组的和减去老子数组的第一个index的值，再加上当前index的值
        // 可以理解为长度为k的窗口往后移动一位
        sums -= arr[i - k]
        sums += arr[i]
        if sums >= target {
            nums += 1
        }
    }
    return nums
}
