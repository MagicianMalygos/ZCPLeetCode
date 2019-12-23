//
//  Problem48.swift
//  ZCPLeetCodeSwift
//
//  Created by zcp on 2018/12/13.
//  Copyright © 2018年 zcp. All rights reserved.
//

import Cocoa

class Problem48: NSObject {
    
    /*
     思路：
     
     3x3矩阵：
     1 2 3
     4 5 6
     7 8 9
     
     对应位置的值互换：
     1 swap 3, 1 swap 9, 1 swap 7
     2 swap 6, 2 swap 8, 2 swap 4
     
     4x4矩阵：
     1  2  3  4
     5  6  7  8
     9  10 11 12
     13 14 15 16
     
     对应位置的值互换：
     第一层：
     1 swap 4, 1 swap 16, 1 swap 13
     2 swap 8, 2 swap 15, 2 swap 9
     3 swap 12, 3 swap 14, 3 swap 5
     第二层：
     6 swap 7, 6 swap 11, 6 swap 10
     
     ......
     
     */
    
    // 20ms
    func rotate(_ matrix: inout [[Int]]) {
        
        var n: Int = matrix.count
        var start: Int = 0
        var end: Int = n-1
        let loop = n / 2
        
        // 遍历每一层
        for _ in 0..<loop {
            method(start, end, &matrix)
            start += 1
            end -= 1
            n -= 2
        }
    }
    
    fileprivate func method(_ start: Int, _ end: Int, _ matrix: inout [[Int]]) {
        // 遍历当前层的基础交换位置
        for index in start..<end {
            swap(start, index, end, &matrix)
        }
    }
    
    fileprivate func swap(_ i: Int, _ j: Int, _ end: Int, _ matrix: inout [[Int]]) {
        
        // 基础位置与其他3个位置按顺序进行值交换
        
        var temp: Int = 0
        // swap1
        // i j = j end
        
        temp = matrix[i][j]
        matrix[i][j] = matrix[j][end]
        matrix[j][end] = temp
        
        // swap2
        // i j = end end-j+i
        temp = matrix[i][j]
        matrix[i][j] = matrix[end][end-j+i]
        matrix[end][end-j+i] = temp
        
        // swap3
        // i j = end-j+i i
        temp = matrix[i][j]
        matrix[i][j] = matrix[end-j+i][i]
        matrix[end-j+i][i] = temp
    }
}

func printMatrix(_ matrix: [[Int]]) {
    var str:String = ""
    for i in 0..<matrix.count {
        str += "\(matrix[i])\n"
    }
    print(str)
}
