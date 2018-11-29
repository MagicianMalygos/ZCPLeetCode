//
//  main40_49.swift
//  ZCPLeetCodeSwift
//
//  Created by 朱超鹏 on 2018/11/28.
//  Copyright © 2018年 zcp. All rights reserved.
//

import Cocoa

func main40_49() -> Double {
    let start = CACurrentMediaTime()
    
    // problem41
//    print(Problem41().firstMissingPositive([7,8,9,11,12]))
//    print(Problem41().firstMissingPositive([]))
//    print(Problem41().firstMissingPositive([1,2,0]))
//    print(Problem41().firstMissingPositive([3,4,-1,1]))
    
    // problem41
//    print(Problem41().firstMissingPositive([7,8,9,11,12]))
    
    // problem42
//    print(Problem42().trap([0,1,0,2,1,0,1,3,2,1,2,1]))
//    print(Problem42().trap([0]))
//    print(Problem42().trap([0,2,0]))
    print(Problem42().trap([4,2,3]))
    
    let end = CACurrentMediaTime()
    return (end-start)*1000
}
