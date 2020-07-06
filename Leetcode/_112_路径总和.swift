//
//  _112_路径总和.swift
//  Leetcode
//
//  Created by 李小争 on 2020/7/7.
//  Copyright © 2020 Logan. All rights reserved.
//

import Cocoa

class _112_____: NSObject {

}
func hasPathSum(_ root: TreeNode?, _ sum: Int) -> Bool {
    guard let root = root else {
        return false
    }
    if root.left == nil && root.right == nil {
        return root.val == sum
    }
    
    return hasPathSum(root.left, sum - root.val) || hasPathSum(root.right, sum - root.val)
}
/*
 
 class Solution {
     public boolean hasPathSum(TreeNode root, int sum) {
         if (root == null) {
             return false;
         }
         if (root.left == null && root.right == null) {
             return sum == root.val;
         }
         return hasPathSum(root.left, sum - root.val) || hasPathSum(root.right, sum - root.val);
     }
 }

 作者：LeetCode-Solution
 链接：https://leetcode-cn.com/problems/path-sum/solution/lu-jing-zong-he-by-leetcode-solution/
 来源：力扣（LeetCode）
 著作权归作者所有。商业转载请联系作者获得授权，非商业转载请注明出处。
 */
