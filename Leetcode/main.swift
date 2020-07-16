//
//  main.swift
//  Leetcode
//
//  Created by 李小争 on 2020/6/1.
//  Copyright © 2020 Logan. All rights reserved.
//

import Foundation

//
//print(findMedianSortedArrays([1, 3], [2]))
//
//print(findMedianSortedArrays([1, 2], [3, 4]))
//
//
//print(findMedianSortedArrays([1, 3], []))
//longestPalindrome("abba")


////print(reverse(1534236469))
//print(myAtoi("9223372036854775808"))
//print(myAtoi("words and 987"))
//print(myAtoi("-   234"))
//print(myAtoi("-9223372036854775809"))
//print(myAtoi("18446744073709551617"))

//print(isPalindrome(121))
//print(isPalindrome(-121))
//print(isPalindrome(10))

//print(findLength([1,2,3,2,1], [3,2,1,4,7]))
//print(findLength([0,0,0,0,1],
//[1,0,0,0,0]))

//print(kthSmallest([
//   [ 1,  5,  9],
//   [10, 11, 13],
//   [12, 13, 15]
//], 8))

//let node = sortedArrayToBST([-10,-3,0,5,9])
//print(node)

//print(longestValidParentheses("(()"))
//print(longestValidParentheses("()(())"))

//print(isMatch("aa", "a"))
//print(isMatch("aa", "*"))
//print(isMatch("cb", "?a"))
//print(isMatch("adceb", "*a*b"))
//print(isMatch("acdcb", "a*c?b"))

//print(uniquePathsWithObstacles([
//  [0,0,0],
//  [0,1,0],
//  [0,0,0]
//]))


//print(climbStairs(3))
//print(rob([2,1,1,2]))
//print(rob([2,3,2]))  3
//print(rob([1,2,3,1]))
//print(divingBoard(1, 1, 0))
//print(respace(["looked","just","like","her","brother"], "jesslookedjustliketimherbrother"))

//print(maxProfit([1,2,3,0,2]))
//print(maxProfit([7,1,5,3,6,4]))

//print(countSmaller([5,2,6,1]))
//print(calculateMinimumHP([[-2,-3,3],[-5,-10,1],[10,30,-5]]))





//print(intersect([4,9,5], [9,4,9,8,4]))
//print(minimumTotal([[-1],[2,3],[1,-1,-3]]))
//print(numTrees(3))
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

print( strSort2Arry(str))


func allIn(total:Int,arg1:Int,arg2:Int,arg3:Int,arg4:Int) -> Int{
    let other = total - arg1 + total - arg2 + total - arg3 + total - arg4
    return total - other
}
print(allIn(total: 60, arg1: 42, arg2: 46, arg3: 50, arg4: 55))
