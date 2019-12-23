//
//  main60_69.swift
//  ZCPLeetCodeSwift
//
//  Created by zcp on 2018/12/18.
//  Copyright © 2018 zcp. All rights reserved.
//

import Cocoa

func main60_69() -> Double {
    let start = CACurrentMediaTime()

    
    // problem66
    print(Problem66().plusOne([1,2,3]))
    print(Problem66().plusOne([0]))
    print(Problem66().plusOne([9,9,9]))
    
    
    let end = CACurrentMediaTime()
    return (end-start)*1000
}
