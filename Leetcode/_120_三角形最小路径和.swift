//
//  _120_三角形最小路径和.swift
//  Leetcode
//
//  Created by 李小争 on 2020/7/14.
//  Copyright © 2020 Logan. All rights reserved.
//

import Cocoa

class _120_________: NSObject {

}
func minimumTotal(_ triangle: [[Int]]) -> Int {
    let count = triangle.count
    var dp:[[Int]] = Array<[Int]>(repeating: Array<Int>(repeating: 0, count: count + 1), count: count + 1)
    for i in (0..<count).reversed() {
        for j in 0...i {
            dp[i][j] = min(dp[i+1][j], dp[i+1][j+1]) + triangle[i][j]
        }
    }
    return dp[0][0]
}
