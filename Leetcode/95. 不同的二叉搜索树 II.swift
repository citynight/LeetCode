//
//  _95.swift
//  Leetcode
//
//  Created by 李小争 on 2020/7/21.
//  Copyright © 2020 Logan. All rights reserved.
//

import Cocoa

class _95: NSObject {
    public class TreeNode {
        public var val: Int
        public var left: TreeNode?
        public var right: TreeNode?
        public init() { self.val = 0; self.left = nil; self.right = nil; }
        public init(_ val: Int) { self.val = val; self.left = nil; self.right = nil; }
        public init(_ val: Int, _ left: TreeNode?, _ right: TreeNode?) {
           self.val = val
            self.left = left
            self.right = right
        }
    }
    
    func generateTrees(_ n: Int) -> [TreeNode?] {
        if n == 0 {
            return []
        }
        return helper(start: 1, end: n)
    }
    private func helper(start:Int,end:Int) -> [TreeNode?] {
        var list:[TreeNode?] = []
        if start > end {
            list.append(nil)
            return list
        }
        for i in start...end {
            let left = helper(start: start, end: i-1)
            let right = helper(start: i+1, end: end)
            for leftNode in left {
                for rightNode in right {
                    let root = TreeNode(i, leftNode, rightNode)
                    list.append(root)
                }
            }
        }
        return list
    }
    

}
