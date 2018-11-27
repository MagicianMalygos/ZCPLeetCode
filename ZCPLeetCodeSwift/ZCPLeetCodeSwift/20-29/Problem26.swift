//
//  Problem26.swift
//  ZCPLeetCodeSwift
//
//  Created by 朱超鹏 on 2018/11/21.
//  Copyright © 2018年 zcp. All rights reserved.
//

import Cocoa

class Problem26: NSObject {
    // 104ms
    func removeDuplicates(_ nums: inout [Int]) -> Int {
        if (nums.count == 0) {
            return 0
        }
        var i: Int = 0
        for j in 1..<nums.count {
            if nums[j] != nums[i] {
                i += 1
                nums[i] = nums[j]
            }
        }
        
        var lastIndex: Int = nums.count - 1
        while lastIndex > i {
            nums.remove(at: lastIndex)
            lastIndex -= 1
        }
        return i+1
    }
}
