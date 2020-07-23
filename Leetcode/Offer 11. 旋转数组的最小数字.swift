//
//  _Offer 11.swift
//  Leetcode
//
//  Created by 李小争 on 2020/7/22.
//  Copyright © 2020 Logan. All rights reserved.
//

import Cocoa

class _Offer_11: NSObject {

}
func minArray(_ numbers: [Int]) -> Int {
    if numbers.count == 1 {
        return numbers[0]
    }
    var min = numbers[0]
    
    for num in numbers {
        if num < min {
            min = num
        }
    }
//    numbers.min()
    return min
}
