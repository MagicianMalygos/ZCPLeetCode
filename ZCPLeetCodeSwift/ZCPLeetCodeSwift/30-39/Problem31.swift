//
//  Problem31.swift
//  ZCPLeetCodeSwift
//
//  Created by 朱超鹏 on 2018/11/27.
//  Copyright © 2018年 zcp. All rights reserved.
//

import Cocoa

class Problem31: NSObject {
    
    // 36ms
    func nextPermutation(_ nums: inout [Int]) {
        
        // 边界情况处理
        if nums.count == 0 {
            return
        }
        
        // index count-2~0
        // find min
        var wrapIndex = -1
        
        for i in (0..<nums.count-1).reversed() {
            var minValue = nums[i+1]
            var minIndex = -1
            
            for j in i+1..<nums.count {
                if nums[i] < nums[j] && nums[j] <= minValue {
                    minValue = nums[j]
                    minIndex = j
                }
            }
            
            // find
            if minIndex != -1 {
                // wrap
                wrapIndex = i
                let temp = nums[wrapIndex]
                nums[wrapIndex] = nums[minIndex]
                nums[minIndex] = temp
                break
            }
        }
        
        // 排序
        for i in wrapIndex+1..<nums.count {
            var tempMinIndex = i
            for j in i+1..<nums.count {
                if nums[j] < nums[tempMinIndex] {
                    tempMinIndex = j
                }
            }
            let temp = nums[i]
            nums[i] = nums[tempMinIndex]
            nums[tempMinIndex] = temp
        }
    }
}
