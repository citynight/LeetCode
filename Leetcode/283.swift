//
//  283.swift
//  Leetcode
//
//  Created by 李小争 on 2020/7/16.
//  Copyright © 2020 Logan. All rights reserved.
//

import Cocoa

class _283: NSObject {

}
func moveZeroes1(_ nums: inout [Int]) {
    if nums.isEmpty {
        return
    }
    var needMoveIndex:[Int] = []
    for (index,val) in nums.enumerated() {
        if val == 0 {
            needMoveIndex.append(index)
        }
    }
    for i in needMoveIndex.reversed() {
        nums.remove(at: i)
        nums.append(0)
    }
}


func moveZeroes(_ nums: inout [Int]) {
    guard nums.count > 1 else {
        return
    }
    var j = 0
    for i in 0..<nums.count {
        if nums[i] != 0 {
            (nums[i],nums[j]) = (nums[j],nums[i])
            j += 1
        }
    }
}
