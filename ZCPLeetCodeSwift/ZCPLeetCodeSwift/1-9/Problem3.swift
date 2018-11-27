//
//  Problem3.swift
//  ZCPLeetCodeSwift
//
//  Created by 朱超鹏 on 2018/11/13.
//  Copyright © 2018年 zcp. All rights reserved.
//

import Cocoa

class Problem3: NSObject {
    // 92ms
    func lengthOfLongestSubstring(_ s: String) -> Int {
        var maxLen:Int = 0
        var i:Int = 0
        var j:Int = 0
        var map = [Character: Int]()
        
        for index in s.indices {
            let chAtJ = s[index]
            
            if map.keys.contains(chAtJ) {
                i = max(map[chAtJ]! + 1, i)
            }
            map.updateValue(j, forKey: chAtJ)
            maxLen = max(maxLen, j - i + 1)
            j = j + 1
        }
        return maxLen
    }
}
