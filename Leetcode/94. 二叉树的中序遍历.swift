//
//  94.swift
//  Leetcode
//
//  Created by 李小争 on 2020/8/12.
//  Copyright © 2020 Logan. All rights reserved.
//

import Cocoa

class _4: NSObject {

}
// 中序遍历 左根右
func inorderTraversal(_ root: TreeNode?) -> [Int] {
    guard let root = root else { return [] }
    let left = inorderTraversal(root.left)
    let val = root.val
    let right = inorderTraversal(root.right)
    return left + [val] + right
}
