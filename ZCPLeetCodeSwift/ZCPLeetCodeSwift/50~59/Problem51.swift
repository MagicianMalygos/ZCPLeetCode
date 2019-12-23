//
//  Problem51.swift
//  ZCPLeetCodeSwift
//
//  Created by zcp on 2019/1/4.
//  Copyright © 2019 zcp. All rights reserved.
//

import Cocoa


/*
 思路：
 
 口 口 口 口 口
 口 口 口 口 口
 口 口 口 口 口
 口 口 口 口 口
 口 口 口 口 口
 
 11 12 13 14 15
 21 22 23 24 25
 31 32 33 34 35
 41 42 43 44 45
 51 52 53 54 55
 
 行-列
 0  -1 -2 -3 -4
 1  0  1  -2 -3
 2  1  0  -1 -2
 3  2  1  0  -1
 4  3  2  1  0
 
 行+列
 2 3 4 5 6
 3 4 5 6 7
 4 5 6 7 8
 5 6 7 8 9
 6 7 8 9 10
 
 */

class Problem51: NSObject {
    
    // 144ms
    func solveNQueens(_ n: Int) -> [[String]] {

        let indexResults = findQueenAtNLine(0, [], n)
        var results = [[String]]()

        // 将index结果转换成Q.结果
        for indexResult in indexResults {
            var result = [String]()
            for i in 0..<n {
                let column = indexResult[i]
                var s = ""
                for j in 0..<n {
                    if column == j {
                        s.append("Q")
                    } else {
                        s.append(".")
                    }
                }
                result.append(s)
            }
            results.append(result)
        }
        return results
    }

    func findQueenAtNLine(_ line: Int, _ existingQueensList:[Int], _ n: Int) -> [[Int]] {

        // 如果已经找到了最后一行的皇后，则existingQueensList为一个可行解
        if line >= n {
            return [existingQueensList];
        }
        
        // 所有可行解的集合
        var result = [[Int]]()
        
        // 构造不可用字典
        var unavailableRow = Set<Int>()
        var unavailableColumn = Set<Int>()
        var unavailableDiagonalAboutSum = Set<Int>()
        var unavailableDiagonalAboutSub = Set<Int>()
        
        for i in 0..<existingQueensList.count {
            let row = i
            let column = existingQueensList[row]
            unavailableRow.insert(row)
            unavailableColumn.insert(column)
            unavailableDiagonalAboutSum.insert(row + column)
            unavailableDiagonalAboutSub.insert(row - column)
        }

        // 遍历该行的所有位置
        for i in 0..<n {
            let row = line
            let column = i

            // 判断当前位置能不能放皇后
            if unavailableRow.contains(row) ||
                unavailableColumn.contains(column) ||
                unavailableDiagonalAboutSum.contains(row + column) ||
                unavailableDiagonalAboutSub.contains(row - column) {
                continue;
            }
            
            // 如果可以，则丢入列表，继续找下一行的皇后
            var newExistingQueensList = existingQueensList
            newExistingQueensList.append(column)
            result += findQueenAtNLine(line + 1, newExistingQueensList, n)
        }
        return result
    }
}
