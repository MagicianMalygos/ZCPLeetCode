//
//  Problem4.swift
//  ZCPLeetCodeSwift
//
//  Created by 朱超鹏 on 2018/11/13.
//  Copyright © 2018年 zcp. All rights reserved.
//

import Cocoa

class Problem4: NSObject {
    // 132ms
    func findMedianSortedArrays(_ nums1: [Int], _ nums2: [Int]) -> Double {
        let count1 = nums1.count
        let count2 = nums2.count
        let count = count1 + count2
        
        let c = count / 2 + 1
        let oushu = (count % 2 == 0) ? true : false
        // 偶数 c-1 c
        // 奇数 c
        
        var sum: Int = 0
        var index1 = 0, index2 = 0, findNum: Int = 0
        
        for i in 0..<c {
            if (count1 <= index1) {
                findNum = nums2[index2];
                index2 = index2 + 1
            } else if (count2 <= index2) {
                findNum = nums1[index1];
                index1 = index1 + 1
            } else if (nums1[index1] <= nums2[index2]) {
                findNum = nums1[index1];
                index1 = index1 + 1
            } else if (nums1[index1] > nums2[index2]) {
                findNum = nums2[index2];
                index2 = index2 + 1
            }
            
            if (oushu && (i+1 == c-1 || i+1 == c)) {
                sum += findNum;
            } else if (!oushu && i+1 == c) {
                sum = findNum;
            }
        }
        
        if (oushu) {
            return Double(sum) / 2
        } else {
            return Double(sum)
        }
    }
}
