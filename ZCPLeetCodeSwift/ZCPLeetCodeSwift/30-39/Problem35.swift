//
//  Problem35.swift
//  ZCPLeetCodeSwift
//
//  Created by 朱超鹏 on 2018/11/25.
//  Copyright © 2018年 zcp. All rights reserved.
//

import Cocoa

class Problem35: NSObject {
    // 48ms
    func searchInsert(_ nums: [Int], _ target: Int) -> Int {
        if nums.count == 0 {
            return 0
        }
        
        var tempNums = nums
        for i in 0..<tempNums.count {
            if tempNums[i] >= target {
                return i
            }
        }
        
        return tempNums.count
    }
}
