//
//  Problem42.swift
//  ZCPLeetCodeSwift
//
//  Created by 朱超鹏 on 2018/11/28.
//  Copyright © 2018年 zcp. All rights reserved.
//

import Cocoa

class Problem42: NSObject {
    
    /*
     思路：
     计算闭合面积，从下网上一次找一层，上面的层跟下面的层有重复的地方需要减去
     最后再减去柱子的面积
     */
    
    // 40ms
    func trap(_ height: [Int]) -> Int {
        
        var area: Int = 0
        var preHeight: Int = 0
        var leftIndex: Int = 0
        var rightIndex: Int = height.count-1
        
        while leftIndex <= rightIndex {
            
            // 跳过0，只处理非0值
            if height[leftIndex] == 0 {
                leftIndex += 1
                continue
            }
            if height[rightIndex] == 0 {
                rightIndex -= 1
                continue
            }
            
            let leftHeight = height[leftIndex]
            let rightHeight = height[rightIndex]
            let minHeight = min(leftHeight, rightHeight)
            area += (minHeight - preHeight) * (rightIndex - leftIndex + 1)
            preHeight = minHeight
            
            // 往中间缩，哪个小动哪个index，index相同就都动，然后找比他大的高度
            if leftHeight < rightHeight {
                while leftIndex <= rightIndex && height[leftIndex] <= leftHeight {
                    leftIndex += 1
                }
            } else if leftHeight > rightHeight {
                while leftIndex <= rightIndex && height[rightIndex] <= rightHeight {
                    rightIndex -= 1
                }
            } else {
                while leftIndex <= rightIndex && height[leftIndex] <= leftHeight {
                    leftIndex += 1
                }
                while leftIndex <= rightIndex && height[rightIndex] <= rightHeight {
                    rightIndex -= 1
                }
            }
        }
        
        for i in 0..<height.count {
            area -= height[i]
        }
        
        return area
    }
}
