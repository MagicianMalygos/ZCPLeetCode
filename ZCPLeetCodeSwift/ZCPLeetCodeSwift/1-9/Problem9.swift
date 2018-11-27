//
//  Problem9.swift
//  ZCPLeetCodeSwift
//
//  Created by 朱超鹏 on 2018/11/13.
//  Copyright © 2018年 zcp. All rights reserved.
//

import Cocoa

class Problem9: NSObject {
    func isPalindrome(_ x: Int) -> Bool {
        if x < 0 {
            return false
        }
        if x < 10 {
            return true
        }
        
        var numArr: Array<Int> = []
        var xCopy: Int = x
        
        while xCopy != 0 {
            numArr.append(xCopy % 10)
            xCopy = xCopy / 10
        }
        
        for index in 0...numArr.count / 2 - 1 {
            if numArr[index] != numArr[numArr.count - 1 - index] {
                return false
            }
        }
        
        return true
    }
}
