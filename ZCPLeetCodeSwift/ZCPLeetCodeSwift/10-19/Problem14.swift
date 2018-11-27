//
//  Problem14.swift
//  ZCPLeetCodeSwift
//
//  Created by 朱超鹏 on 2018/11/14.
//  Copyright © 2018年 zcp. All rights reserved.
//

import Cocoa

class Problem14: NSObject {
    
    // 48ms
    func longestCommonPrefix(_ strs: [String]) -> String {
        // 边界值判断
        if strs.count == 0 {
            return ""
        }
        if strs.count == 1 {
            return strs.first!
        }
        
        var resultPrefix: String = ""
        var strArrs = Array<Array<Character>>()
        
        // 转array
        for i in 0..<strs.count {
            strArrs.append(Array(strs[i]))
        }
        
        var loop: Bool = true
        var index: Int = 0
        
        while loop {
            var indexChar = ""
            
            for i in 0..<strArrs.count {
                let strArr = strArrs[i]

                if !(index < strArr.count) {
                    loop = false
                    indexChar = ""
                    break
                }
                let currentChar = String(strArr[index])
                
                if i == 0 {
                    indexChar = currentChar
                } else if (indexChar != currentChar) {
                    loop = false
                    indexChar = ""
                    break
                }
            }
            resultPrefix = "\(resultPrefix)\(indexChar)"
            index += 1
        }
        return resultPrefix
    }
    
    // 92ms
    func longestCommonPrefix2(_ strs: [String]) -> String {
        
        // 边界值判断
        if strs.count == 0 {
            return ""
        }
        if strs.count == 1 {
            return strs.first!
        }
        
        var resultPrefix: String = ""
        var loop: Bool = true
        var index: Int = 0
        
        while loop {
            var currentLoopPrefix = ""
            
            for i in 0..<strs.count {
                let str = strs[i]
                
                if !(index < str.count) {
                    loop = false
                    break
                }
                
                let currentStrIndex = str.index(str.startIndex, offsetBy: index);
                let currentStrPrefix = str[...currentStrIndex]
                if i == 0 {
                    currentLoopPrefix = String(str[...currentStrIndex])
                } else if currentLoopPrefix != currentStrPrefix {
                    loop = false
                    break
                }
            }
            if loop {
                resultPrefix = currentLoopPrefix
                index += 1
            }
        }
        return resultPrefix
    }
}
