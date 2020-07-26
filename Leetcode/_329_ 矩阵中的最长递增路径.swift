
//
//  _329_.swift
//  Leetcode
//
//  Created by 李小争 on 2020/7/26.
//  Copyright © 2020 Logan. All rights reserved.
//

import Cocoa

class _329_: NSObject {

}

func longestIncreasingPath(_ matrix: [[Int]]) -> Int {
    
    if matrix.count == 0 || matrix[0].count == 0 {
        return 0
    }
    let m = matrix.count
    let n = matrix[0].count
    var cache = Array<[Int]>(repeating: Array<Int>(repeating: -1, count: n), count: m)
    
    func dfs(row:Int,col:Int) -> Int{
        if cache[row][col] != -1  {
            return cache[row][col]
        }
        let current = matrix[row][col]
        var right = 0
        if row < m - 1 && matrix[row + 1][col] < current {
            right = dfs(row: row + 1, col: col)
        }
        
        var down = 0
        if col < n - 1 && matrix[row][col + 1] < current {
            down = dfs(row: row, col: col + 1)
        }
        
        var left = 0
        if row > 0 && matrix[row - 1][col] < current {
            left = dfs(row: row - 1, col: col)
        }
        
        var up = 0
        if col > 0 && matrix[row][col - 1] < current {
            up = dfs(row: row, col: col - 1)
        }
        cache[row][col] = max(left, right, up, down) + 1
        return cache[row][col]
    }
    
    var maxValue = 0
    for row in 0..<m {
        for col in 0..<n {
            maxValue = max(maxValue,dfs(row: row, col: col))
        }
    }
    
    return maxValue
}
