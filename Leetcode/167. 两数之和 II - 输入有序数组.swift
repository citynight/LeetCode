//
//  167.swift
//  Leetcode
//
//  Created by 李小争 on 2020/7/20.
//  Copyright © 2020 Logan. All rights reserved.
//

import Cocoa

class _67: NSObject {

}

func twoSum(_ numbers: [Int], _ target: Int) -> [Int] {
    var left = 0
    var right = numbers.count - 1
    
    while left < right {
        let val = target - numbers[left] - numbers[right]
        if val == 0 {
            return [left,right]
        }else if val < 0 {
            right -= 1
        }else if val > 0 {
            left += 1
        }
    }
    return []
}
