//
//  Problem16.swift
//  ZCPLeetCodeSwift
//
//  Created by 朱超鹏 on 2018/11/16.
//  Copyright © 2018年 zcp. All rights reserved.
//

import Cocoa

class Problem16: NSObject {
    func threeSumClosest(_ nums: [Int], _ target: Int) -> Int {
        
        // a+b+c 最接近t
        // abs(a+b+c - t) 最接近0
        // a+b最接近t-c
        
        var result: Int = 0
        var max: Int = Int(INT32_MAX)
        
        for i in 0..<nums.count {
            for j in i+1..<nums.count {
                for k in j+1..<nums.count {
                    
                    let sum = nums[i] + nums[j] + nums[k]
                    let value = abs(sum - target)
                    
                    if value < max {
                        max = value
                        result = sum
                    }
                }
            }
        }
        return result
    }
}
