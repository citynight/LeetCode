//
//  _3_无重复字符的最长子串.swift
//  Leetcode
//
//  Created by 李小争 on 2020/6/1.
//  Copyright © 2020 Logan. All rights reserved.
//

import Foundation
/*
 使用字典记录每个字符的位置,遍历的时候先判断是否存在这个字符,如果存在这个字符说明重复了,重复的时候先判断这次重复的字符个数是否比最的的字符数大,然后再判断是否重复的字符是否在开始判断之后,如果之前就略过.最后比较最后没有重复的字符和已知最大子串的长度比较,选出较大的

 代码

 作者：lxzzzzzz
 链接：https://leetcode-cn.com/problems/longest-substring-without-repeating-characters/solution/shi-yong-zi-dian-ji-lu-mei-ge-zi-fu-de-wei-zhi-yi-/
 来源：力扣（LeetCode）
 著作权归作者所有。商业转载请联系作者获得授权，非商业转载请注明出处。
 */
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
//
//print(lengthOfLongestSubstring("abcabcbb"))
//
//print(lengthOfLongestSubstring("bbbbb"))
//
//print(lengthOfLongestSubstring("pwwkew"))
//
//print(lengthOfLongestSubstring("aab"))
//
//print(lengthOfLongestSubstring("cdabbacdea"))
