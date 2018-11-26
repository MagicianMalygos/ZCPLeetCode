//
//  Problem17.swift
//  ZCPLeetCodeSwift
//
//  Created by 朱超鹏 on 2018/11/16.
//  Copyright © 2018年 zcp. All rights reserved.
//

import Cocoa

class Problem17: NSObject {
    
    var resultArr = Array<String>()
    let map = ["2": ["a", "b", "c"],
               "3": ["d", "e", "f"],
               "4": ["g", "h", "i"],
               "5": ["j", "k", "l"],
               "6": ["m", "n", "o"],
               "7": ["p", "q", "r", "s"],
               "8": ["t", "u", "v"],
               "9": ["w", "x", "y", "z"]]
    
    func letterCombinations(_ digits: String) -> [String] {
        if digits.count == 0 {
            return []
        }
        let digitArr = Array(digits)
        construct("", digitArr, 0)
        return resultArr
    }
    
    func construct(_ head: String, _ arr: Array<Character>, _ index: Int) {
        if index >= arr.count {
            resultArr.append(head)
            return
        }
        
        let digit = String(arr[index])
        let wordArr = map[digit]!
        
        for i in 0..<wordArr.count {
            let word = wordArr[i]
            construct(head+word, arr, index+1)
        }
    }
}
