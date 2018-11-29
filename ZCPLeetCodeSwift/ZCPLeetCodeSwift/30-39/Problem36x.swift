//
//  Problem36.swift
//  ZCPLeetCodeSwift
//
//  Created by 朱超鹏 on 2018/11/28.
//  Copyright © 2018年 zcp. All rights reserved.
//

import Cocoa

class Problem36: NSObject {
    func isValidSudoku(_ board: [[Character]]) -> Bool {
        
        let rowCount = board.count
        let columnCount = (board.count > 0) ? board[0].count : 0
        
        // row
        for i in 0..<board.count {
            var set = Set<Character>()
            
            // column
            for j in 0..<board.count {
                let value = board[i][j]
                if value == "." {
                    continue
                }
                
                // 判断该列是否有重复
                if set.contains(value) {
                    return false
                }
                // 判断4个方向 是否有重复
                if i-1 > 0 && j-1 > 0 && value == board[i-1][j-1] {
                    return false
                }
                if i-1 > 0 && j+1 < columnCount && value == board[i-1][j+1] {
                    return false
                }
                if i+1 < rowCount && j-1 > 0 && value == board[i+1][j-1] {
                    return false
                }
                if i+1 < rowCount && j+1 < columnCount && value == board[i+1][j+1] {
                    return false
                }
                set.insert(value)
            }
        }
        
        // column
        for i in 0..<board.count {
            var set = Set<Character>()
            
            // row
            for j in 0..<board.count {
                let value = board[j][i]
                if value == "." {
                    continue
                }
                // 判断该列是否有重复
                if set.contains(value) {
                    return false
                }
                set.insert(value)
            }
        }
        return true
    }
}
