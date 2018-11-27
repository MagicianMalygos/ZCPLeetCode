//
//  Problem13.swift
//  ZCPLeetCodeSwift
//
//  Created by 朱超鹏 on 2018/11/13.
//  Copyright © 2018年 zcp. All rights reserved.
//

import Cocoa

class Problem13: NSObject {
    // 60ms
    func romanToInt(_ s: String) -> Int {
        let charArray = Array(s)
        let map: Dictionary<Character, Int> = ["M": 1000, "D": 500, "C": 100, "L": 50, "X": 10, "V": 5,"I": 1,]
        var result: Int = 0
        
        for index in 0..<charArray.count {
            let currentChar = charArray[index]
            var currentValue = map[currentChar] ?? 0
            let nextIndex = index + 1
            
            if nextIndex < charArray.count {
                let nextChar = charArray[nextIndex]
                let nextValue = map[nextChar] ?? 0
                
                if currentValue < nextValue {
                    currentValue = currentValue * -1
                }
            }
            result = result + currentValue
        }
        return result
    }
}
