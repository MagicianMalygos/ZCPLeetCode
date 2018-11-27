//
//  Problem34.swift
//  ZCPLeetCodeSwift
//
//  Created by 朱超鹏 on 2018/11/25.
//  Copyright © 2018年 zcp. All rights reserved.
//

import Cocoa

class Problem34: NSObject {
    // 92ms
    func searchRange(_ nums: [Int], _ target: Int) -> [Int] {
        if nums.count == 0 {
            return [-1, -1]
        }
        return find(0, nums.count-1, nums, target)
    }
    
    func find(_ left: Int, _ right: Int, _ nums: [Int], _ target: Int) -> [Int] {
        // 递归结束条件 left==right
        if left == right {
            if nums[left] == target {
                return [left, right]
            } else {
                return [-1, -1]
            }
        }
        
        // 左：left ~ mid
        // 右：mid+1 ~ right
        let middle = (right - left) / 2 + left
        
        // 1.左边0 右边1 2.左边1 右边0 3.左0 右0 4.左1 右1
        if nums[middle] < target {
            // 左0
            if nums[middle + 1] > target {
                // 右0 此种情况下两边都不存在target
                return [-1, -1]
            } else {
                // 右1 此种情况下左边没有target，右边即为结果
                return find(middle + 1, right, nums, target)
            }
        } else {
            // 左1
            if nums[middle + 1] > target {
                // 右0 此种情况下右边没有target，左边即为结果
                return find(left, middle, nums, target)
            } else {
                // 右1 此情况下左右两边铁定是有target的，也就是说middle和middle+1都是target
                let leftArr = find(left, middle, nums, target)
                let rightArr = find(middle + 1, right, nums, target)
                return [leftArr[0], rightArr[1]]
            }
        }
    }
}
