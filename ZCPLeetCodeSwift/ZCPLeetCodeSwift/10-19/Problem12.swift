//
//  Problem12.swift
//  ZCPLeetCodeSwift
//
//  Created by 朱超鹏 on 2018/11/13.
//  Copyright © 2018年 zcp. All rights reserved.
//

import Cocoa

class Problem12: NSObject {
    /*
     I  1
     V  5
     X  10
     L  50
     C  100
     D  500
     M  1000
     
     加：
     12  XII     X + II
     27  XXVII   XX + V + II
     
     特殊减：
     4   IV      V - I
     9   IX      X - I
     40  XL      L - X
     90  XC      C - X
     400 CD      D - C
     900 CM      M - C
     */
    
    /// int to roman
    ///
    /// - Parameter num: 1-3999
    /// - Returns: roman num
    func intToRoman(_ num: Int) -> String {
        var loopNum: Int = num
        var result = ""
        
        let unitArr = ["I", "V", "X", "L", "C", "D", "M", "", ""]
        var i: Int = 1
        
        while loopNum != 0 {
            let currentUnitValue = loopNum % 10
            loopNum = loopNum / 10
            
            // IVX XLC CDM
            // 012  34  56
            
            result = transformOneUnit(currentUnitValue, unitArr[i], preUnit: unitArr[i-1], nextUnit: unitArr[i+1]) + result
            i = i + 2
        }
        return result
    }
    func transformOneUnit(_ num: Int, _ currUnit: String, preUnit: String, nextUnit: String) -> String {
        var result = ""
        
        if num == 0 {
            return result
        }
        
        if num < 5 {
            if num == 4 {
                result = preUnit + currUnit
            } else {
                for _ in 1...num {
                    result = result + preUnit
                }
            }
        } else if (num > 5) {
            if num == 9 {
                result = preUnit + nextUnit
            } else {
                result = currUnit
                for _ in 1...num-5 {
                    result = result + preUnit
                }
            }
        } else {
            result = currUnit
        }
        return result
    }
}
