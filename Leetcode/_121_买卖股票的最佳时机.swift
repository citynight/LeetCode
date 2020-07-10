//
//  _121_买卖股票的最佳时机.swift
//  Leetcode
//
//  Created by 李小争 on 2020/7/10.
//  Copyright © 2020 Logan. All rights reserved.
//

import Cocoa

class _121__________: NSObject {

}
func maxProfit(_ prices: [Int]) -> Int {
    if prices.isEmpty {
        return 0
    }

    let len = prices.count

    // 持有 昨天比今天低可以买
    // 卖 今天比昨天高卖
    var hold = Array<Int>(repeating: 0, count: len)
    var sale = Array<Int>(repeating: 0, count: len)
    hold[0] = prices[0]
    for i in 1..<len {
        hold[i] = min(hold[i-1],prices[i])
        sale[i] = max(prices[i]-hold[i-1],sale[i-1])
    }
    return sale[len - 1]
}
