//
//  Problem8.swift
//  ZCPLeetCodeSwift
//
//  Created by 朱超鹏 on 2018/11/13.
//  Copyright © 2018年 zcp. All rights reserved.
//

import Cocoa

class Problem8: NSObject {
    func myAtoi(_ str: String) -> Int {
        let strCopy: String = str
        if strCopy.count == 0 {
            return 0
        }
        
        var result: Int = 0
        var isNegative: Bool = false
        var isFindFirstNumOrSymbol: Bool = false
        
        let sArr = Array(strCopy)
        
        for s in sArr {
            
            if !isFindFirstNumOrSymbol && s == " " {
                continue
            }
            
            if !isFindFirstNumOrSymbol && (s == "-" || s == "+") {
                isNegative = (s == "-")
                isFindFirstNumOrSymbol = true
                continue
            }
            
            if (s >= "0") && (s <= "9") {
                isFindFirstNumOrSymbol = true
                
                result = result * 10 + Int(String(s))!
                
                if !isNegative && result > INT32_MAX {
                    return Int(INT32_MAX)
                } else if isNegative && -result < (-INT32_MAX - 1) {
                    return Int(-INT32_MAX - 1)
                }
            } else {
                break;
            }
        }
        if isNegative {
            return -result
        }
        return result
    }
}
