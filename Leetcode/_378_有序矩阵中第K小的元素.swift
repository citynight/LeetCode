//
//  _378_\有序矩阵中第K小的元素.swift
//  Leetcode
//
//  Created by 李小争 on 2020/7/2.
//  Copyright © 2020 Logan. All rights reserved.
//

import Cocoa

class _378________K____: NSObject {

}
func kthSmallest(_ matrix: [[Int]], _ k: Int) -> Int {
    let arr = matrix.flatMap({$0}).sorted()
    return arr[k-1]
}
