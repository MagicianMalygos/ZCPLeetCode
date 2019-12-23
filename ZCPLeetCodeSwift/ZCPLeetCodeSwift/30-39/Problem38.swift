//
//  Problem38.swift
//  ZCPLeetCodeSwift
//
//  Created by zcp on 2018/12/18.
//  Copyright © 2018 zcp. All rights reserved.
//

import Cocoa

class Problem38: NSObject {
    /*
     思路：
     1
     11
     21
     1211
     111221
     312211
     13112221
     1113213211
     遍历+计数
     
     */
    
    // 28ms
    func countAndSay(_ n: Int) -> String {
        
        var result = "1"
        for _ in 0..<n-1 {
            result = counted(result)
        }
        
        return result
    }
    
    func counted(_ nums: String) -> String {
        var result: String = ""
        if nums.count == 0 {
            return ""
        }
        
        let numArr = Array(nums)
        var count: Int = 1
        var temp: Character = numArr[0]
        
        for i in 0..<numArr.count {
            let num = numArr[i]
            
            if i == 0 {
                temp = num
                count = 1
                continue
            }
            if temp == num {
                count += 1
            } else {
                result += "\(count)\(temp)"
                temp = num
                count = 1
            }
        }
        result += "\(count)\(temp)"
        
        return result
    }
}
