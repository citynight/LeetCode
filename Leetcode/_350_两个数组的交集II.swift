//
//  _350_两个数组的交集II.swift
//  Leetcode
//
//  Created by 李小争 on 2020/7/13.
//  Copyright © 2020 Logan. All rights reserved.
//

import Cocoa

class _350________II: NSObject {

}
func intersect(_ nums1: [Int], _ nums2: [Int]) -> [Int] {
    
    let temp1 = nums1.sorted()
    let temp2 = nums2.sorted()
    
    var i = 0
    var j = 0
    
    var res:[Int] = []
    
    while i < temp1.count && j < temp2.count {
        if temp1[i] < temp2[j] {
            i += 1
        }else if temp1[i] > temp2[j] {
            j += 1
        }else {
            res.append(temp1[i])
            i += 1
            j += 1
        }
    }
    return res
}
