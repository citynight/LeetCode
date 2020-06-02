//
//  _4_寻找两个正序数组的中位数.swift
//  Leetcode
//
//  Created by 李小争 on 2020/6/2.
//  Copyright © 2020 Logan. All rights reserved.
//

func findMedianSortedArrays(_ nums1: [Int], _ nums2: [Int]) -> Double {
    let res = (nums1 + nums2).sorted()
    let i = res.count / 2
    if res.count % 2 == 0 {
        return Double((res[i] + res[i-1])) / 2.0
    }
    return Double(res[i])
}

