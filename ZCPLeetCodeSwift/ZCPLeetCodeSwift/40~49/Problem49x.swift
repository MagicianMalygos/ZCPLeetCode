//
//  Problem49.swift
//  ZCPLeetCodeSwift
//
//  Created by zcp on 2018/12/14.
//  Copyright © 2018 zcp. All rights reserved.
//

import Cocoa

class Problem49: NSObject {
    
    /*
     思路：
     对字母进行二进制编码，
     a-z对应0001、0010、0100、1000
     然后将单词的每个字母对应的值做与运算得到key，如果字母相同，则该key相同，字母不同key也不同。
     */
    
    func groupAnagrams(_ strs: [String]) -> [[String]] {
        var map = Dictionary<Int64, [String]>()
        
        for str in strs {
            let key: Int64 = generateKey(str)
            if map.keys.contains(key) {
                var arr = map[key]
                arr?.append(str)
                map[key] = arr
            } else {
                map[key] = [str]
            }
        }
        
        var result = [[String]]()
        
        for value in map.values {
            result.append(value)
        }
        return result
    }
    
    func generateKey(_ str: String) -> Int64 {
        var result: Int64 = 0
        
        for index in str.indices {
            print(str[index].hashValue)
//            result += Int64(str[index].hashValue)
        }
        
        return result
    }
}
