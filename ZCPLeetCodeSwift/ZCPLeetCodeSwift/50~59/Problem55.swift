//
//  Problem55.swift
//  ZCPLeetCodeSwift
//
//  Created by zcp on 2019/3/15.
//  Copyright © 2019 zcp. All rights reserved.
//

import Cocoa


class Problem55: NSObject {
    // 108 ms
    func canJump(_ nums: [Int]) -> Bool {
        let endIndex = nums.count-1
        var baseIndex: Int = 0
        var baseNum: Int = nums[baseIndex]
        var baseRangeRight: Int = baseIndex + baseNum
        var i = 0
        
        // loop
        while i < nums.count {
            if baseRangeRight >= endIndex {
                return true
            }
            if baseNum == 0  {
                return false
            }
            
            // find new base from baseIndex+1~baseIndex+baseNum
            for j in baseIndex+1...baseRangeRight {
                let jNum = nums[j]
                let jRangeRight = j + nums[j]
                if jRangeRight > baseRangeRight {
                    baseIndex = j
                    baseNum = jNum
                    baseRangeRight = jRangeRight
                    break
                }
            }
            if i == baseIndex {
                return false
            } else {
                i = baseIndex
            }
        }
        return false
    }
}
