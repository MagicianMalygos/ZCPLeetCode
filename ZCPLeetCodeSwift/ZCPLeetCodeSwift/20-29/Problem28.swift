//
//  Problem28.swift
//  ZCPLeetCodeSwift
//
//  Created by 朱超鹏 on 2018/11/25.
//  Copyright © 2018年 zcp. All rights reserved.
//

import Cocoa

class Problem28: NSObject {
    // 36ms
    func strStr(_ haystack: String, _ needle: String) -> Int {
        if needle == "" {
            return 0
        }
        if haystack.count < needle.count {
            return -1
        }
        
        let haystackArr = Array(haystack)
        let needleArr = Array(needle)
        
        for i in 0..<(haystackArr.count - needleArr.count + 1) {
            var isOK = true
            for j in 0..<needleArr.count {
                if haystackArr[i + j] != needleArr[j] {
                    isOK = false
                    break
                }
            }
            if isOK {
                return i
            }
        }
        return -1
    }
}
