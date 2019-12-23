//
//  Problem50.swift
//  ZCPLeetCodeSwift
//
//  Created by zcp on 2019/3/15.
//  Copyright © 2019 zcp. All rights reserved.
//

import Cocoa


/*
 思路：
 分治
 
 pow(2, 10) = pow(2, 5) * pow(2, 5)
 pow(2, 5) = pow(2, 2) * pow(2, 2) * 2
 
 */

class Problem50: NSObject {
    // 20 ms
    func myPow(_ x: Double, _ n: Int) -> Double {
        
        if n == 0 {
            return 1
        } else if (n == 1) {
            return x
        } else if (n == -1) {
            return 1 / x
        }
        
        var result:Double = 0;
        
        // 判断n是奇数还是偶数
        if n%2 == 0 {
            // 偶数
            result = myPow(x * x, n / 2)
        } else {
            // 奇数
            result = myPow(x, n - 1) * x
        }
        return result
    }
}
