//
//  _632_最小区间.swift
//  Leetcode
//
//  Created by 李小争 on 2020/8/1.
//  Copyright © 2020 Logan. All rights reserved.
//

import Cocoa

class _632_____: NSObject {

}

func smallestRange(_ nums: [[Int]]) -> [Int] {
    // 你有 k 个升序排列的整数数组
    let k = nums.count
    var candidate = [Element]()
    
    func pushElement(_ ele: Element) {
        candidate.append(ele)
        candidate.sort { (o1, o2) -> Bool in
            return o1.val < o2.val
        }
    }
    
    for i in 0..<k {
        let ele = Element(list: i, index: 0, val: nums[i][0])
        pushElement(ele)
    }
    
    var range = Int.max
    var res:[Int] = [0,0]
    while candidate.count == k { // 保证每一个数组至少有一个数在其中
        // 找出max
        let max = candidate.last!.val
        let min = candidate.first!.val
        if max - min < range {
            range = max - min
            res[0] = min
            res[1] = max
        }
        // 移除最小元素
        let first = candidate.removeFirst()
        // 判断是否越界
        let nextIndex = first.index + 1
        if nextIndex < nums[first.list].count {
            let next = Element(list: first.list, index: nextIndex, val: nums[first.list][nextIndex])
            pushElement(next)
        }
    }
    
    return res
}

struct Element {
    /// 第几个数组
    let list:Int
    /// 数组中的第几个元素
    let index:Int
    /// 当前元素的值
    let val:Int
}
