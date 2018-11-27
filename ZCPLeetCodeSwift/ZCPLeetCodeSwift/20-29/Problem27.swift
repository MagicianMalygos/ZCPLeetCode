//
//  Problem27.swift
//  ZCPLeetCodeSwift
//
//  Created by 朱超鹏 on 2018/11/18.
//  Copyright © 2018年 zcp. All rights reserved.
//

import Cocoa

class Problem27: NSObject {
    /*
     思路：
     从前遍历，从后找可用元素，交换
     */
    // 16ms
    func removeElement(_ nums: inout [Int], _ val: Int) -> Int {
        var currIndex: Int = 0
        var lastIndex: Int = nums.count - 1
        
        while currIndex <= lastIndex {
            let currNum = nums[currIndex]
            
            if currNum != val {
                currIndex += 1
                continue
            }
            
            while lastIndex >= currIndex {
                let lastNum = nums[lastIndex]
                
                if lastNum == val {
                    nums.remove(at: lastIndex)
                    lastIndex -= 1
                } else {
                    let temp = nums[currIndex]
                    nums[currIndex] = nums[lastIndex]
                    nums[lastIndex] = temp
                    nums.remove(at: lastIndex)
                    lastIndex -= 1
                    break
                }
            }
            currIndex += 1
        }
        return nums.count
    }
    
    // 16ms
    func removeElement2(_ nums: inout [Int], _ val: Int) -> Int {
        if nums.count == 0 {
            return 0
        }
        
        var i: Int = 0
        for j in 0..<nums.count {
            if nums[j] != val {
                nums[i] = nums[j]
                i += 1
            }
        }
        
        var lastIndex: Int = nums.count - 1
        while lastIndex > i-1 {
            nums.remove(at: lastIndex)
            lastIndex -= 1
        }
        return i
    }
}
