//
//  _7_整数反转.swift
//  Leetcode
//
//  Created by 李小争 on 2020/6/11.
//  Copyright © 2020 Logan. All rights reserved.
//

import Cocoa

class _7_____: NSObject {
    
}
let INT_MAX:Int = Int(pow(2.0, 31.0) - 1)
let INT_MIN:Int = Int(-pow(2.0, 31.0))
func reverse(_ x: Int) -> Int {
    if ( x <= INT_MIN ){ return 0}
    var X = x
    let neg = X < 0 ? -1 : 1
    X *= neg
    var ret = 0
    while (X > 0) {
        var n = ret
        n *= 10;
        n += X % 10;
        X /= 10;
        
        if n > INT_MAX || n/10 != ret {
            return 0;
        }
        ret = n;
    }
    return  ret * neg;
}
