//
//  _8_字符串转换整数(atoi).swift
//  Leetcode
//
//  Created by 李小争 on 2020/6/20.
//  Copyright © 2020 Logan. All rights reserved.
//

import Cocoa

class _8_________atoi_: NSObject {

}


func myAtoi(_ str: String) -> Int {
    var returnValue = ""
    var neg = 1
    var hasNeg = false
    let chars = Array(str)
    for char in chars {
        if char == " " && hasNeg == false{
            if returnValue.isEmpty {
                continue
            }else {
                break
            }
        }
        // 如果
        let tmp = char.description
        if numbers.contains(tmp) {
            returnValue.append(char)
        }else {
            if hasNeg == false {
                if char == "-" && returnValue.isEmpty {
                    neg = -1
                    hasNeg = true
                    continue
                }else if char == "+" && returnValue.isEmpty{
                    neg = 1
                    hasNeg = true
                    continue
                }
            }
            break
        }
    }
    var value = 0
    if !returnValue.isEmpty {
        let tmp = NSDecimalNumber(string: returnValue).decimalValue
        if tmp >= 0 {
            if tmp > Decimal(integerLiteral: INT_MAX) {
                return neg > 0 ? INT_MAX : INT_MIN
            }else {
                value = (Int(returnValue) ?? 0) * neg
            }
        }else {
            return neg > 0 ? INT_MAX : INT_MIN
        }
    }
     
    if value > INT_MAX {
        return INT_MAX
    }
    
    if value < INT_MIN {
        return INT_MIN
    }
    
    return value
}
let INT_MAX:Int = Int(pow(2.0, 31.0) - 1)
let INT_MIN:Int = Int(-pow(2.0, 31.0))
private let numbers = ["0","1","2","3","4","5","6","7","8","9"]
