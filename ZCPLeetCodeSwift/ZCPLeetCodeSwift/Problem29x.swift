//
//  Problem29.swift
//  ZCPLeetCodeSwift
//
//  Created by 朱超鹏 on 2018/11/25.
//  Copyright © 2018年 zcp. All rights reserved.
//

import Cocoa

class Problem29: NSObject {
    func divide(_ dividend: Int, _ divisor: Int) -> Int {
        
        if dividend == 0 {
            return 0
        }
        
        let dividendIsNegative: Bool = (dividend < 0) ? true : false
        let divisorIsNegative: Bool = (divisor < 0) ? true : false
        let resultIsNegative: Bool = (dividendIsNegative != divisorIsNegative) ? true : false
        
        var tempDividend = dividend
        var result = 0
        
        if resultIsNegative {
            while (dividendIsNegative && tempDividend <= 0) || (!dividendIsNegative && tempDividend >= 0) {
                tempDividend += divisor
                result += 1
            }
        } else {
            while (dividendIsNegative && tempDividend <= 0) || (!dividendIsNegative && tempDividend >= 0) {
                tempDividend -= divisor
                result += 1
            }
        }
        return resultIsNegative ? -(result - 1) : result - 1
    }
}
