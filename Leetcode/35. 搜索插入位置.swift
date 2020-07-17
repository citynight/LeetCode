//
//  _35.swift
//  Leetcode
//
//  Created by 李小争 on 2020/7/17.
//  Copyright © 2020 Logan. All rights reserved.
//

import Cocoa

class _35: NSObject {

}
func searchInsert(_ nums: [Int], _ target: Int) -> Int {
    if target <= nums[0] {
        return 0
    }
  
    let right = nums.count - 1
    if target == nums[right] {
        return right
    }
    if target > nums[right] {
        return right + 1
    }
    
    return index4Insert(nums, target: target, left: 0, right: right)
}

private func index4Insert(_ nums: [Int], target: Int, left:Int,right:Int) -> Int{
    
    if target == nums[right] {
        return right
    }
    if target == nums[left] {
        return left
    }
    let mid = (left + right + 1)/2
    if mid == right {
        return mid
    }
    if target < nums[mid] {
        return index4Insert(nums, target: target, left: left, right: mid)
    }else {
        return index4Insert(nums, target: target, left: mid, right: right)
    }
}
