//
//  面试题 08.03.swift
//  Leetcode
//
//  Created by 李小争 on 2020/7/31.
//  Copyright © 2020 Logan. All rights reserved.
//

import Cocoa

class ____08_03: NSObject {

}
func findMagicIndex(_ nums: [Int]) -> Int {
    for (index,num) in nums.enumerated() {
        if index == num {
            return index
        }
    }
    return -1
}
