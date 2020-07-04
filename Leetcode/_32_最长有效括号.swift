//
//  _32_最长有效括号.swift
//  Leetcode
//
//  Created by 李小争 on 2020/7/4.
//  Copyright © 2020 Logan. All rights reserved.
//

import Cocoa

class _32_______: NSObject {

}

func longestValidParentheses1(_ s: String) -> Int {
    var res = 0
    var stack:[Int] = []
    stack.append(-1)
    for (i,char) in Array(s).enumerated() {
        if char == "(" {
            stack.append(i)
        }else {
            // 先判断是否为空
            if stack.isEmpty {
                stack.append(i)
            }else {
                stack.removeLast()
                if stack.isEmpty {
                    stack.append(i)
                }else {
                    res = max(res, i - (stack.last ?? 0))
                }
            }
        }
    }
    return res
}

func longestValidParentheses(_ s: String) -> Int {
    var res = 0
    var stack:[Int] = [-1]
    var i = 0
    
    for c in s {
        if c == "(" {
            stack.append(i)
        }else {
            stack.removeLast()
            if stack.isEmpty {
                stack.append(i)
            }else {
                res = max(res, i - stack.last!)
            }
        }
        i += 1
    }
    return res
}


