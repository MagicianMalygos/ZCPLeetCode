//
//  Problem45.swift
//  ZCPLeetCodeSwift
//
//  Created by zcp on 2018/12/13.
//  Copyright © 2018年 zcp. All rights reserved.
//

import Cocoa

class Problem45: NSObject {
    
    // 132ms
    func jump(_ nums: [Int]) -> Int {
        var result: Int = 0
        var index: Int = 0
        
        while index < nums.count-1 {
            let num = nums[index]
            
            // find max num
            var newIndex: Int = index + num
            var maxIndex: Int = newIndex
            
            if newIndex < nums.count - 1 {
                let loopLeft = index + 1
                let loopRight = newIndex
                for i in loopLeft...loopRight {
                    if i+nums[i] > maxIndex {
                        newIndex = i
                        maxIndex = i + nums[i]
                    }
                }
            } else {
                newIndex = nums.count - 1
            }
            
            index = newIndex
            result += 1
        }
        return result
    }
}
