//
//  main30_39.swift
//  ZCPLeetCodeSwift
//
//  Created by 朱超鹏 on 2018/11/27.
//  Copyright © 2018年 zcp. All rights reserved.
//

import Cocoa

func main30_39() -> Double {
    let start = CACurrentMediaTime()
    
    // problem31
    var arr = [1,2,3,4,5]
    Problem31().nextPermutation(&arr)
    print(arr)
    arr = [1]
    Problem31().nextPermutation(&arr)
    print(arr)
    arr = [5,4,3,2,1]
    Problem31().nextPermutation(&arr)
    print(arr)
    
    // problem34
    //print(Problem34().searchRange([1, 3], 1))
    //print(Problem34().searchRange([5,7,8,8,8,10], 8))
    //print(Problem34().searchRange([5,7,7,8,8,10], 5))
    //print(Problem34().searchRange([5,7,7,8,8,10], 10))
    //print(Problem34().searchRange([5,7,7,8,8,10], 1))
    //print(Problem34().searchRange([5,7,7,8,8,10], 11))
    //print(Problem34().searchRange([], 0))
    
    
    // problem35
    //print(Problem35().searchInsert([1,3,5,6], 5))
    //print(Problem35().searchInsert([1,3,5,6], 4))
    //print(Problem35().searchInsert([1,3,5,6], 0))
    //print(Problem35().searchInsert([1,3,5,6], 10))
    //print(Problem35().searchInsert([], 5))
    //print(Problem35().searchInsert([1], 0))

    let end = CACurrentMediaTime()
    return (end-start)*1000
}