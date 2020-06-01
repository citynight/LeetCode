//
//  main.swift
//  Leetcode
//
//  Created by 李小争 on 2020/6/1.
//  Copyright © 2020 Logan. All rights reserved.
//

import Foundation

func isValid1(_ s: String) -> Bool {
    if s.isEmpty {
        return true
    }
    if s.count % 2 != 0 {
        return false
    }
    var stack:[Character] = []
    
    let map:[Character:Character] = ["(":")","[":"]","{":"}"]
    let mapKey = map.keys
    let chars = Array(s)
    for c in chars {
        // 左括号
        if mapKey.contains(c) {
            stack.append(c)
        }else {
            // 右括号
            guard let last = stack.popLast(),c == map[last] else {
                return false
            }
        }
    }
    return stack.isEmpty
}
func isValid(_ s: String) -> Bool {
    if s.isEmpty {
        return true
    }
    if s.count % 2 != 0 {
        return false
    }
    
    func match(left:Character,right:Character) -> Bool {
        if (left == "(" && right == ")") || (left == "[" && right == "]") || (left == "{" && right == "}") {
            return true
        }
        return false
    }
    
    var stack:[Character] = []
        let chars = Array(s)
    for c in chars {
        if stack.isEmpty {
            stack.append(c)
        }else if match(left: stack.last!, right: c) {
            _ = stack.popLast()
        }else {
            stack.append(c)
        }
    }
    return stack.isEmpty
}
//print(isValid("()"))
//
//print(isValid("()[]{}"))
//
//print(isValid("(]"))
//
//
//print(isValid("([)]"))
//      
//print(isValid("{[]}"))
//
//print(isValid("(("))

