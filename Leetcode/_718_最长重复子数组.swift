//
//  _718_最长重复子数组.swift
//  Leetcode
//
//  Created by 李小争 on 2020/7/1.
//  Copyright © 2020 Logan. All rights reserved.
//

import Cocoa

class _718________: NSObject {

}


func findLength(_ A: [Int], _ B: [Int]) -> Int {
    return max(maxLength(A, B), maxLength(B, A))
}


private func maxLength(_ A: [Int], _ B: [Int]) -> Int {
    let alen = A.count
    let blen = B.count
    var maxLength = 0
    
    for (indexA,_) in A.enumerated() {
        var startA = indexA
        var startB = 0
        var count = 0
        while startA < alen && startB < blen {
            if A[startA] == B[startB] {
                count += 1
                maxLength = max(maxLength, count)
            }else {
                count = 0
            }
            startA += 1
            startB += 1
        }
    }
    return maxLength
}
