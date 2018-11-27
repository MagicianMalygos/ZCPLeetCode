//
//  Problem7.swift
//  ZCPLeetCodeSwift
//
//  Created by 朱超鹏 on 2018/11/13.
//  Copyright © 2018年 zcp. All rights reserved.
//

import Cocoa

class Problem7: NSObject {
    func reverse(_ x: Int) -> Int {
        var xCopy = x
        var result: Int64 = 0
        
        while xCopy != 0 {
            let digit: Int32 = Int32(xCopy % 10)
            result = result * 10 + Int64(digit)
            if result > INT32_MAX || result < -INT32_MAX-1 {
                result = 0
                break
            }
            xCopy = xCopy / 10
        }
        return Int(result)
    }
}
