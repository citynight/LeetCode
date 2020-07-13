//
//  归并排序.swift
//  Leetcode
//
//  Created by 李小争 on 2020/7/11.
//  Copyright © 2020 Logan. All rights reserved.
//

import Cocoa

class ____: NSObject {

}

func mergeSort(_ nums:[Int]) -> [Int] {
    if nums.isEmpty {
        return []
    }
    
    var res:[Int] = []
    
    return []
}

func mergePass(_ nums:[Int],left:Int,right:Int) {
    if left == right {
        return
    }
    let mid = left + (right-left)/2
    mergePass(nums, left: left, right: mid)
    mergePass(nums, left: mid + 1, right: right)
    
    
    
}
