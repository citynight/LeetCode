//
//  _15.swift
//  Leetcode
//
//  Created by 李小争 on 2020/7/19.
//  Copyright © 2020 Logan. All rights reserved.
//

import Cocoa

class _15: NSObject {

}
//func threeSum(_ nums: [Int]) -> [[Int]] {
//    if nums.count < 3 {
//        return []
//    }
//    // 首先使用map 记录,然后两数之和
//    var map = [Int:[Int]]()
//    for (index,num) in nums.enumerated() {
//        if let val = map[num] {
//            map[num] = val + [index]
//        }else {
//            map[num] = [index]
//        }
//    }
//    var res:[[Int]] = []
//    //计算俩数之和
//    for i in 0..<(nums.count-2) {
//        for j in (i + 1)..<(nums.count-1) {
//            let a = nums[i]
//            let b = nums[j]
//            let target = -(a + b)
//            if let val = map[target] {
//                for index in val {
//                    if index > j {
//                        let c = nums[index]
//                        if !res.contains([a,b,c]), !res.contains([a,c,b]), !res.contains([b,a,c]), !res.contains([b,c,a]), !res.contains([c,a,b]), !res.contains([c,b,a]) {
//                            res.append([a,b,c])
//                        }
//                    }
//                }
//
//            }
//        }
//    }
//    return res
//}

func threeSum(_ nums: [Int]) -> [[Int]] {
    let count = nums.count
    let orign = nums.sorted()
    print(orign)
    var begin = 0
    var end = count - 1
    
    var res = [[Int]]()
    
    for (index,target) in orign.enumerated() {
        
        if target > 0 {
            break
        }
        if index > 0, target == orign[index - 1] {
            continue
        }
        // target = - (a + b)
        begin = index + 1
        end = count - 1
        while begin < end {
            let a = orign[begin]
            let b = orign[end]
            let val = target + (a + b)
            if val == 0 {
                res.append([target,a,b])
                while begin < end, orign[begin] == orign[begin + 1] {
                    begin += 1
                }
                while begin < end, orign[end] == orign[end - 1] {
                    end -= 1
                }
                begin += 1
                end -= 1
            }else if val < 0 {
                begin += 1
            }else if val > 0 {
                end -= 1
            }
        }
    }
    return res
}
