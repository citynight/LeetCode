//
//  _174_地下城游戏.swift
//  Leetcode
//
//  Created by 李小争 on 2020/7/12.
//  Copyright © 2020 Logan. All rights reserved.
//

import Cocoa

class _174______: NSObject {

}

func calculateMinimumHP(_ dungeon: [[Int]]) -> Int {
    let n = dungeon.count
    let m = dungeon[0].count
    var dp = Array<[Int]>(repeating: Array<Int>(repeating: Int.max, count: m + 1), count: n + 1)
    dp[n][m-1] = 1
    dp[n-1][m] = 1
    
    for i in (0..<n).reversed() {
        for j in (0..<m).reversed() {
            let minn = min(dp[i + 1][j], dp[i][j + 1])
            dp[i][j] = max(minn - dungeon[i][j], 1)
        }
    }
    return dp[0][0]
}
/*
class Solution {
    public int calculateMinimumHP(int[][] dungeon) {
        int n = dungeon.length, m = dungeon[0].length;
        int[][] dp = new int[n + 1][m + 1];
        for (int i = 0; i <= n; ++i) {
            Arrays.fill(dp[i], Integer.MAX_VALUE);
        }
        dp[n][m - 1] = dp[n - 1][m] = 1;
        for (int i = n - 1; i >= 0; --i) {
            for (int j = m - 1; j >= 0; --j) {
                int minn = Math.min(dp[i + 1][j], dp[i][j + 1]);
                dp[i][j] = Math.max(minn - dungeon[i][j], 1);
            }
        }
        return dp[0][0];
    }
}
*/
