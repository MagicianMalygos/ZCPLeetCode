//
//  Problem6.swift
//  ZCPLeetCodeSwift
//
//  Created by 朱超鹏 on 2018/11/13.
//  Copyright © 2018年 zcp. All rights reserved.
//

import Cocoa

class Problem6: NSObject {
    // 316ms
    func convert(_ s: String, _ numRows: Int) -> String {
        if numRows == 1 {
            return s
        }
        
        // 字符数组
        let charArray = Array(s)
        // 变换后每个z单元的字符个数
        let zUnitCount = numRows * 2 - 2
        // 第i行的字符为s
        var eachRowContentDict = Dictionary<Int, String>()
        
        for i in 0..<charArray.count {
            var index = (i + 1) % zUnitCount
            if index == 0 {
                index = zUnitCount
            }
            let row = (index <= numRows) ? index : (numRows - (index - numRows))
            let currentRowContent = eachRowContentDict[row - 1] ?? ""
            let string = "\(currentRowContent)\(charArray[i])"
            eachRowContentDict[row - 1] = string
        }
        
        var result: String = ""
        for i in 0..<numRows {
            result = "\(result)\(eachRowContentDict[i] ?? "")"
        }
        return result
    }
}
