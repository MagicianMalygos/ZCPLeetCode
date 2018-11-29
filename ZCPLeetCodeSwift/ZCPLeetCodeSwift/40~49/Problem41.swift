//
//  Problem41.swift
//  ZCPLeetCodeSwift
//
//  Created by 朱超鹏 on 2018/11/28.
//  Copyright © 2018年 zcp. All rights reserved.
//

import Cocoa

class Problem41: NSObject {
    // 24ms
    func firstMissingPositive(_ nums: [Int]) -> Int {
        var result = 1
        var set = Set<Int>()
        
        for i in 0..<nums.count {
            set.insert(nums[i])
            while set.contains(result) {
                result += 1
            }
        }
        return result
    }
}
