//
//  Problem5.swift
//  ZCPLeetCodeSwift
//
//  Created by 朱超鹏 on 2018/11/13.
//  Copyright © 2018年 zcp. All rights reserved.
//

import Cocoa

class Problem5: NSObject {
    func longestPalindrome(_ s: String) -> String {
        
        // 找以i~i或i~j为中心的回文
        // 回文:每次以中心为基准取其左右的值，判断是否相等
        
        // 找i~j：
        // 如果value[i]跟右边不相等，记录回文中心i~i
        // 如果value[i]跟右边相等，记录回文中心i~j
        
        guard s.count > 1 else {
            return s
        }
        
        var resultLeftIndex: Int = 0
        var maxLen: Int = 1;
        
        var sArray = Array(s)
        
        // 循环参数
        var index = 0
        
        while index < sArray.count {
            var leftIndex = index
            var rightIndex = index
            
            // 找重复
            while rightIndex + 1 < sArray.count && sArray[rightIndex] == sArray[rightIndex + 1] {
                rightIndex = rightIndex + 1
            }
            
            // 下一次循环从重复数后开始继续找回文
            index = rightIndex + 1
            
            // 找以left~right为中心的回文
            while leftIndex - 1 >= 0 && rightIndex + 1 < sArray.count && sArray[leftIndex - 1] == sArray[rightIndex + 1] {
                leftIndex = leftIndex - 1
                rightIndex = rightIndex + 1
            }
            
            // 判断本次回文的长度，如果最长那么记录它
            let len: Int = rightIndex - leftIndex + 1
            if len > maxLen {
                resultLeftIndex = leftIndex
                maxLen = len
            }
        }
        
        let nss: NSString = NSString.init(string: s)
        
        let result: String = nss.substring(with: NSMakeRange(resultLeftIndex, maxLen))
        return result
    }
    
    func longestPalindrome2(_ s: String) -> String {
        var stackIndex: Int = 0
        var result: String = "";
        
        let origin: NSString = NSString.init(string: s)
        
        if origin.length > 0 {
            result = origin.substring(with: NSMakeRange(0, 1));
        }
        
        for i in 0..<origin.length {
            let ch:String = origin.substring(with: NSMakeRange(i, 1))
            
            if stackIndex >= 1 && origin.substring(with: NSMakeRange(stackIndex - 1, 1)) == ch {
                let max: String = huiwen(origin, i, stackIndex - 1)
                if max.count > result.count {
                    result = max;
                }
            }
            if stackIndex >= 2 && origin.substring(with: NSMakeRange(stackIndex - 2, 1)) == ch {
                let max: String = huiwen(origin, i, stackIndex - 2)
                if max.count > result.count {
                    result = max;
                }
            }
            stackIndex = stackIndex + 1
        }
        return result
    }
    
    // MARK: <help method>
    
    func huiwen(_ origin: NSString, _ originIndex: Int, _ stackIndex: Int) -> String {
        var oi: Int = originIndex + 1
        var si: Int = stackIndex - 1
        
        for _ in oi..<origin.length {
            if si < 0 {
                break
            }
            let originCh: String = origin.substring(with: NSMakeRange(oi, 1))
            let stackCh: String = origin.substring(with: NSMakeRange(si, 1))
            
            if originCh != stackCh {
                break
            }
            oi = oi + 1
            si = si - 1
        }
        oi = oi - 1
        si = si + 1
        
        let result: String = origin.substring(with: NSMakeRange(si, oi - si + 1))
        return result
    }
}
