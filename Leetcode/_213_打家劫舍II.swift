//
//  _213_打家劫舍II.swift
//  Leetcode
//
//  Created by 李小争 on 2020/7/6.
//  Copyright © 2020 Logan. All rights reserved.
//

import Cocoa

class _213_____II: NSObject {

}
func rob(_ nums: [Int]) -> Int {
    if nums.isEmpty {
        return 0
    }
    let length = nums.count
    if length == 1 {
        return nums[0]
    }else if length == 2 {
        return max(nums[0],nums[1])
    }
    
    
    var dp1 = [Int](repeating: 0, count: length)
    var dp2 = [Int](repeating: 0, count: length)
    
    //初始化两个dp数组，dp1是计算的是[1,end],dp2计算的是[0,end-1]
    dp1[0] = 0
    dp1[1] = nums[1]
    
    dp2[0] = nums[0]
    dp2[1] = max(nums[0], nums[1])
    
    for i in 2..<length {
        dp1[i] = max(dp1[i-2] + nums[i], dp1[i-1])
    }
    
    for i in 2..<length-1 {
        dp2[i] = max(dp2[i-2] + nums[i], dp2[i-1])
    }
    
    return max(dp1[length-1], dp2[length-2])
}
/*
 
 class Solution {
     public int rob(int[] nums) {
         if(nums==null || nums.length==0) {
             return 0;
         }
         if(nums.length<=2) {
             return (nums.length==2) ? Math.max(nums[0],nums[1]) : nums[0];
         }
         int n = nums.length;
         int[] dp1 = new int[n];
         int[] dp2 = new int[n];
         //初始化两个dp数组，dp1是计算的是[1,end],dp2计算的是[0,end-1]
         dp1[0] = 0;
         dp1[1] = nums[1];
         dp2[0] = nums[0];
         dp2[1] = Math.max(nums[0],nums[1]);
         //按照【打家劫舍 I】的转移方式执行两遍
         for(int i=2;i<n;++i) {
             dp1[i] = Math.max(dp1[i-1],dp1[i-2]+nums[i]);
         }
         for(int i=2;i<n-1;++i) {
             dp2[i] = Math.max(dp2[i-1],dp2[i-2]+nums[i]);
         }
         return Math.max(dp1[n-1],dp2[n-2]);
     }
 }

 作者：wang_ni_ma
 链接：https://leetcode-cn.com/problems/house-robber-ii/solution/si-chong-jie-fa-213-da-jia-jie-she-ii-by-wang_ni_m/
 来源：力扣（LeetCode）
 著作权归作者所有。商业转载请联系作者获得授权，非商业转载请注明出处。
 */
