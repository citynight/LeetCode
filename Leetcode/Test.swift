//
//  Test.swift
//  Leetcode
//
//  Created by 李小争 on 2020/7/16.
//  Copyright © 2020 Logan. All rights reserved.
//

import Cocoa

class Test: NSObject {

}

/*
 2592X1944,
 160X120,
 320X240,
 1920X1080,
 640X480,
 800X600,
 1024X768,
 1280X720,
 1280X960,
 2048X1536,
 2592X1944
 这就是字符串数组。然后排序按照相乘像素大小进行排序然后展示
 */
let str = """
2592X1944,160X120,320X240,1920X1080,640X480,800X600,1024X768,1280X720,1280X960,2048X1536,2592X1944
"""
func strSort2Arry(_ str:String) -> [String]{
    if str.isEmpty {
        return []
    }
    let temp = str.split(separator: ",")
    if temp.count == 1 {
        return [String(temp[0])]
    }
    
    let arr =  temp.sorted { (left, right) -> Bool in
        return Int(left.replacingOccurrences(of: "X", with: ""))! < Int(right.replacingOccurrences(of: "X", with: ""))!
    }.map({String($0)})
    return arr
}


// 一个班60人 42游泳 46骑车 50滑冰 55羽毛球,都会的有多少人
func allIn(total:Int,arg1:Int,arg2:Int,arg3:Int,arg4:Int) -> Int{
    let other = total - arg1 + total - arg2 + total - arg3 + total - arg4
    return total - other
}
//
//print( strSort2Arry(str))
//print(allIn(total: 60, arg1: 42, arg2: 46, arg3: 50, arg4: 55))
