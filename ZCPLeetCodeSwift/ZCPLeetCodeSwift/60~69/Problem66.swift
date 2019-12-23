//
//  Problem66.swift
//  ZCPLeetCodeSwift
//
//  Created by zcp on 2018/12/18.
//  Copyright © 2018 zcp. All rights reserved.
//

import Cocoa

class Problem66: NSObject {
    // 24ms
    func plusOne(_ digits: [Int]) -> [Int] {
        var nums = digits
        
        var carry = 1
        var i = nums.count-1
        
        while i >= 0 && carry == 1 {
            var sum = nums[i] + 1
            if sum >= 10 {
                sum = sum - 10
                carry = 1
            } else {
                carry = 0
            }
            nums[i] = sum
            i -= 1
        }
        if carry == 1 {
            nums.insert(1, at: 0)
        }
        return nums
    }
}
