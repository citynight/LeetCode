//
//  _108_将有序数组转换为二叉搜索树.swift
//  Leetcode
//
//  Created by 李小争 on 2020/7/3.
//  Copyright © 2020 Logan. All rights reserved.
//

import Cocoa

class _108______________: NSObject {

}
/*
 class Solution {
     public TreeNode sortedArrayToBST(int[] nums) {
         return helper(nums, 0, nums.length - 1);
     }

     public TreeNode helper(int[] nums, int left, int right) {
         if (left > right) {
             return null;
         }

         // 总是选择中间位置左边的数字作为根节点
         int mid = (left + right) / 2;

         TreeNode root = new TreeNode(nums[mid]);
         root.left = helper(nums, left, mid - 1);
         root.right = helper(nums, mid + 1, right);
         return root;
     }
 }
 */

public class TreeNode {
     public var val: Int
     public var left: TreeNode?
     public var right: TreeNode?
     public init(_ val: Int) {
         self.val = val
         self.left = nil
         self.right = nil
     }
}

func sortedArrayToBST(_ nums: [Int]) -> TreeNode? {
    if nums.isEmpty {
        return nil
    }
    return helper(nums, left: 0, right: nums.count - 1)
}


func helper(_ nums: [Int],left:Int,right:Int) -> TreeNode? {
    if left > right {
        return nil
    }
    let mid = (left + right) / 2
    let root = TreeNode(nums[mid])
    root.left = helper(nums, left: left, right: mid - 1)
    root.right = helper(nums, left: mid + 1, right: right)
    return root
}
