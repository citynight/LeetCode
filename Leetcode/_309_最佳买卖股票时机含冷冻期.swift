//
//  _309_最佳买卖股票时机含冷冻期.swift
//  Leetcode
//
//  Created by 李小争 on 2020/7/10.
//  Copyright © 2020 Logan. All rights reserved.
//

import Cocoa

class _309_____________: NSObject {

}
func maxProfit1(_ prices: [Int]) -> Int {
    if prices.isEmpty {
        return 0
    }
    let len = prices.count
    // 持有只能昨天持有或者昨天是冷冻今天买入
    var hold = Array<Int>(repeating: 0, count: prices.count)
    // 昨天一定是持有状态
    var sale = Array<Int>(repeating: 0, count: prices.count)
    // 昨天是冷冻期或者昨天是卖出状态
    var cool = Array<Int>(repeating: 0, count: prices.count)
    
    hold[0] = -prices[0]
    for i in 1..<len {
        hold[i] =  max(hold[i-1],cool[i-1] - prices[i])
        sale[i] = hold[i-1] + prices[i]
        cool[i] = max(cool[i-1], sale[i-1])
    }
    
    return max(sale[len-1], cool[len-1])
}
