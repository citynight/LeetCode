//
//  _64_最小路径和.swift
//  Leetcode
//
//  Created by 李小争 on 2020/7/23.
//  Copyright © 2020 Logan. All rights reserved.
//

import Cocoa

class _64______: NSObject {

}

func minPathSum(_ grid: [[Int]]) -> Int {
    let len = grid.count
    let count = grid[0].count
    var dp:[[Int]] = Array<[Int]>(repeating: Array<Int>(repeating: 0, count: count ), count: len)
    for i in 0..<len {
        for j in 0..<count {
            if i == 0 && j == 0 {
                dp[i][j] = grid[0][0]
            }else if i == 0 {
                dp[i][j] = dp[i][j-1] + grid[i][j]
            }else if j == 0 {
                dp[i][j] = dp[i-1][j] + grid[i][j]
            }else {
                dp[i][j] = min(dp[i-1][j], dp[i][j-1]) + grid[i][j]
            }
        }
    }
    return dp[len-1][count-1]
}
