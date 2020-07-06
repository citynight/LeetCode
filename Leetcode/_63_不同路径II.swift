//
//  _63_不同路径II.swift
//  Leetcode
//
//  Created by 李小争 on 2020/7/6.
//  Copyright © 2020 Logan. All rights reserved.
//

import Cocoa

class _63_____II: NSObject {

}

func uniquePathsWithObstacles(_ obstacleGrid: [[Int]]) -> Int {
    let m = obstacleGrid.count
    let n = obstacleGrid[0].count
    
    var dp:[[Int]] = obstacleGrid
    for i in 0..<m {
        for j in 0..<n {
            dp[i][j] = 0
        }
    }
    
    dp[0][0] = obstacleGrid[0][0] == 1 ? 0 : 1
    for i in 1..<m {
        dp[i][0] = obstacleGrid[i][0] == 1 ? 0 : dp[i-1][0]
    }
    
    for j in 1..<n {
        dp[0][j] = obstacleGrid[0][j] == 1 ? 0 : dp[0][j-1]
    }
    
    for i in 1..<m {
        for j in 1..<n {
            if obstacleGrid[i][j] == 1 {
                continue
            }
            dp[i][j] = (dp[i-1][j] + dp[i][j-1])
        }
    }
    return dp[m-1][n-1]
}

