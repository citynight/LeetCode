//
//  _315_计算右侧小于当前元素的个数.swift
//  Leetcode
//
//  Created by 李小争 on 2020/7/11.
//  Copyright © 2020 Logan. All rights reserved.
//

import Cocoa

class _315______________: NSObject {

}

var temp: [Int] = []
var counter: [Int] = []
var indexes: [Int] = []
func countSmaller(_ nums: [Int]) -> [Int] {
    let len = nums.count
    var res:[Int] = []
    if len == 0 {
        return res
    }
    temp = Array<Int>(repeating: 0, count: len)
    counter = Array<Int>(repeating: 0, count: len)
    indexes = Array<Int>(repeating: 0, count: len)
    for i in 0..<len {
        indexes[i] = i
    }
    mergeAndCountSmaller(nums, left: 0, right: len - 1)
    
    for i in 0..<len {
        res.append(counter[i])
    }
    return res
}
private func mergeAndCountSmaller(_ nums: [Int],left:Int,right:Int) {
    if left == right {// 数组只有一个元素的时候，没有比较，不统计
        return
    }
    let mid = left + (right - left)/2
    mergeAndCountSmaller(nums, left: left, right: mid)
    mergeAndCountSmaller(nums, left: mid + 1, right: right)
    
    if nums[indexes[mid]] > nums[indexes[mid + 1]]{
        mergeOfTwoSortedArrAndCountSmaller(nums, left: left, mid: mid, right: right)
    }
}

private func mergeOfTwoSortedArrAndCountSmaller(_ nums: [Int],left:Int,mid:Int,right:Int) {
    for i in left...right {
        temp[i] = indexes[i]
    }
    
    var i = left
    var j = mid + 1
    
    for k in left...right {
        if i > mid {
            indexes[k] = temp[j]
            j += 1
        }else if j > right {
            indexes[k] = temp[i]
            i += 1
            counter[indexes[k]] += (right - mid)
        }else if nums[temp[i]] <= nums[temp[j]] {
            indexes[k] = temp[i]
            i += 1
            counter[indexes[k]] += (j - mid - 1)
        }else {
            indexes[k] = temp[j]
            j += 1
        }
    }
}
