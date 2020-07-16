//
//  11.swift
//  Leetcode
//
//  Created by 李小争 on 2020/7/16.
//  Copyright © 2020 Logan. All rights reserved.
//

import Cocoa

class _11: NSObject {

}
func maxArea1(_ height: [Int]) -> Int {
    // [1,8,6,2,5,4,8,3,7]
    // 取8-7 最小为7 数组长度7 最大值 7*7


    let len = height.count
    if len < 2 {
        return 0
    }

    var maxArea = 0
    for i in 0..<len {
        for j in i..<len {
            let x = min(height[i], height[j])
            let y = j - i
            maxArea = max(x * y, maxArea)
        }
    }
    return maxArea
}


func maxArea(_ height: [Int]) -> Int {
    let len = height.count
    if len < 2 {
        return 0
    }
    var maxArea = 0
    var left = 0
    var right = len - 1
    
    
    while left < right {
        let area = (right - left) * min(height[left], height[right])
        maxArea = max(area, maxArea)
        if height[left] < height[right] {
            left += 1
        }else {
            right -= 1
        }
    }
    return maxArea
}
