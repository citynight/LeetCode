//
//  _面试题16_11_跳水板.swift
//  Leetcode
//
//  Created by 李小争 on 2020/7/8.
//  Copyright © 2020 Logan. All rights reserved.
//

import Cocoa

class ____16_11____: NSObject {

}
/*
 你正在使用一堆木板建造跳水板。有两种类型的木板，其中长度较短的木板长度为shorter，长度较长的木板长度为longer。你必须正好使用k块木板。编写一个方法，生成跳水板所有可能的长度。

 返回的长度需要从小到大排列。

 示例：

 输入：
 shorter = 1
 longer = 2
 k = 3
 输出： {3,4,5,6}
 提示：

 0 < shorter <= longer
 0 <= k <= 100000
 */
func divingBoard(_ shorter: Int, _ longer: Int, _ k: Int) -> [Int] {
            /*
    value = shorter * (k-i) + longer * i
    */
    if k == 0 {
        return []
    }

    if shorter == longer {
        return [shorter * k]
    }

    var res = Array<Int>(repeating: 0, count: k + 1)

    for i in 0...k {
        res[i] = shorter * (k - i) + longer * i
    }
    return res
}

