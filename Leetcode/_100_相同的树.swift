//
//  _100_相同的树.swift
//  Leetcode
//
//  Created by 李小争 on 2020/8/7.
//  Copyright © 2020 Logan. All rights reserved.
//

import Cocoa

class _100_____: NSObject {

}
func isSameTree(_ p: TreeNode?, _ q: TreeNode?) -> Bool {
    if p == nil && q == nil {
        return true
    }
    if let p = p, let q = q {
        if p.val == q.val {
            return isSameTree(p.left,q.left) || isSameTree(p.left,q.right) || isSameTree(p.right,q.left) || isSameTree(p.right,q.right)
        }
    }
    return false;
}
