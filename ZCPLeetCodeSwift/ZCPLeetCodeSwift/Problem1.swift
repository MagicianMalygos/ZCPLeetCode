//
//  Problem1.swift
//  ZCPLeetCodeSwift
//
//  Created by 朱超鹏 on 2018/11/13.
//  Copyright © 2018年 zcp. All rights reserved.
//

import Cocoa

class Problem1: NSObject {
    // 36ms
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        var map = [Int: Int]()
        for i in 0..<nums.count {
            if map.keys.contains(nums[i]) {
                let otheri:Int = map[nums[i]]!
                return [otheri, i]
            } else {
                map[target - nums[i]] = i
            }
        }
        return [];
    }
    // 68ms
    func twoSum2(_ nums: [Int], _ target: Int) -> [Int] {
        var map = [Int: Int]();
        for i in 0..<nums.count {
            if map.keys.contains(nums[i]) {
                return [map[nums[i]]!, i]
            } else {
                map[target - nums[i]] = i
            }
        }
        return [];
    }
}
