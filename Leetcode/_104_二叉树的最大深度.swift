//
//  _104_二叉树的最大深度.swift
//  Leetcode
//
//  Created by 李小争 on 2020/7/28.
//  Copyright © 2020 Logan. All rights reserved.
//

import Cocoa

class _104_________: NSObject {

}
func maxDepth(_ root: TreeNode?) -> Int {
    guard let root = root else {
        return 0
    }
    let left = maxDepth(root.left)
    let right = maxDepth(root.right)
    return max(left, right) + 1
}
