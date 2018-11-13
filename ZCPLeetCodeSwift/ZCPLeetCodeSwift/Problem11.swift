//
//  Problem11.swift
//  ZCPLeetCodeSwift
//
//  Created by 朱超鹏 on 2018/11/13.
//  Copyright © 2018年 zcp. All rights reserved.
//

import Cocoa

class Problem11: NSObject {
    func maxArea(_ height: [Int]) -> Int {
        
        var i: Int = 0
        var j: Int = height.count - 1
        var maxArea = 0
        var tempMaxArea = 0
        
        repeat {
            let ai = height[i]
            let aj = height[j]
            tempMaxArea = min(ai, aj) * (j - i)
            maxArea = max(maxArea, tempMaxArea)
            
            if ai > aj {
                j = j-1
            } else {
                i = i+1
            }
        } while (i != j)
        
        return maxArea
    }
}
