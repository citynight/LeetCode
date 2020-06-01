//
//  _3_无重复字符的最长子串.swift
//  Leetcode
//
//  Created by 李小争 on 2020/6/1.
//  Copyright © 2020 Logan. All rights reserved.
//

import Foundation

func lengthOfLongestSubstring(_ s: String) -> Int {
    var max = 0
    let chars = Array(s)
    var dic = [Character:Int]()
    var start = 0
    for (index,c) in chars.enumerated() {
        if let val = dic[c] {
            let tmp = index - start
            if tmp > max {
                max = tmp
            }
            if val + 1 > start {
               start = val + 1
            }
        }
        dic[c] = index
    }
    let tmp = chars.count - start
    if tmp > max {
        max = tmp
    }
    return max
}
