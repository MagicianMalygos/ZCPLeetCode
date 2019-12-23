//
//  Problem58.swift
//  ZCPLeetCodeSwift
//
//  Created by zcp on 2018/12/18.
//  Copyright © 2018 zcp. All rights reserved.
//

import Cocoa

class Problem58: NSObject {
    
    // 16ms
    func lengthOfLastWord2(_ s: String) -> Int {
        if s.count == 0 {
            return 0
        }
        
        let sArr = Array(s).reversed()
        var result: Int = 0
        var findWord: Bool = false
        
        for s in sArr {
            if s == " " {
                if findWord {
                    break
                }
            } else {
                findWord = true
                result += 1
            }
        }
        return result
    }
    
    // 28ms
    func lengthOfLastWord(_ s: String) -> Int {
        if s.count == 0 {
            return 0
        }
        let sArr = s.components(separatedBy: " ")
        var i = sArr.count-1
        
        while i >= 0 {
            let count = sArr[i].count
            if count != 0 {
                return count
            }
            i -= 1
        }
        return 0
    }
}
