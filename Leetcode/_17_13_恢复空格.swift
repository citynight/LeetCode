//
//  _17_13_恢复空格.swift
//  Leetcode
//
//  Created by 李小争 on 2020/7/9.
//  Copyright © 2020 Logan. All rights reserved.
//

import Cocoa

class _17_13_____: NSObject {

}
/*
public int respace(String[] dictionary, String s) {
        
    Set<String> set = new HashSet();
    for (String d : dictionary) {
        set.add(d);
    }
    
    // dp[i] 表示从s起始，长度位i的字符串，最小未识别的字符个数
    int[] dp = new int[s.length() + 1];

    for (int i = 1; i <= s.length(); i++) {
        if (dp[i - 1] != i - 1) {
            dp[i] = dp[i - 1] + 1;
        } else {
            dp[i] = i;
        }
        for (int j = i - 1; j >= 0; j--) {
            // 如果发现了字典中的字符，更新dp数组
            String str = s.substring(j, i);
            if (set.contains(str)) {
                dp[i] = Math.min(dp[j], dp[i]);
            }
        }
    }
    return dp[s.length()];
}

*/

func respace1(_ dictionary: [String], _ sentence: String) -> Int {
    let length = sentence.count
    if length == 0 {
        return 0
    }
    
    let set = Set(dictionary)
    
    let chars = Array(sentence)
    var dp = Array<Int>(repeating: 0, count: length + 1)
    for i in 1...length {
        if dp[i-1] != i-1 {
            dp[i] = dp[i-1] + 1
        }else {
            dp[i] = i
        }
        
        var j = i - 1
        while j >= 0 {
            let str = String(chars[j..<i])
            if set.contains(str) {
                dp[i] = min(dp[j], dp[i])
            }
            j -= 1
        }
    }
    return dp[length]
}

func respace(_ dictionary: [String], _ sentence: String) -> Int {
    let length = sentence.count
    if length == 0 {
        return 0
    }
    let root = Trie()
    for word in dictionary {
        root.insert(word)
    }
    var dp = Array<Int>(repeating: Int.max, count: length + 1)
    dp[0] = 0
    let chars = Array(sentence)
    for i in 1...length {
        dp[i] = dp[i-1] + 1
        var curPos = root
        
        var j = i
        while j >= 1 {
            let t = Int( chars[j-1].asciiValue! - Character("a").asciiValue!)
            if curPos.next[t] == nil {
                break
            }else if curPos.next[t]!.isEnd {
                dp[i] = min(dp[i],dp[j-1])
            }
            
            if dp[i] == 0 {
                break
            }
            curPos = curPos.next[t]!
            j -= 1
        }
    }
    return dp[length]
}

class Trie {
    var next:[Trie?] = []
    var isEnd = false
    
    init() {
        next = Array<Trie?>(repeating: nil, count: 26)
        isEnd = false
    }
    
    func insert(_ s: String) {
        var curPos = self
        let reversed = String( s.reversed())
        for char in reversed {
            let t = Int(char.asciiValue! - Character("a").asciiValue!)
            if curPos.next[t] == nil {
                curPos.next[t] = Trie()
            }
            curPos = curPos.next[t]!
        }
        curPos.isEnd = true
    }
}
