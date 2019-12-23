//
//  main50_59.swift
//  ZCPLeetCodeSwift
//
//  Created by zcp on 2018/12/18.
//  Copyright © 2018 zcp. All rights reserved.
//

import Cocoa

func main50_59() -> Double {
    let start = CACurrentMediaTime()
    
    // problem50
//    print(Problem50().myPow(2, -2))
//    print(Problem50().myPow(34.00515, -3))
    
    // problem51
//    print(Problem51().solveNQueens(4))
    
    // problem55
//    print(Problem55().canJump([2,3,1,1,4]))
//    print(Problem55().canJump([3,2,1,0,4]))
    print(Problem55().canJump([0,1]))
    
    // problem58
//    print(Problem58().lengthOfLastWord("hello world"))
//    print(Problem58().lengthOfLastWord("hello"))
//    print(Problem58().lengthOfLastWord(""))
//    print(Problem58().lengthOfLastWord(" hello"))
//    print(Problem58().lengthOfLastWord("world "))
//    print(Problem58().lengthOfLastWord("a "))
    
    
    let end = CACurrentMediaTime()
    return (end-start)*1000
}
