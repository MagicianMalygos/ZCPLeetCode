//
//  Problem15.swift
//  ZCPLeetCodeSwift
//
//  Created by 朱超鹏 on 2018/11/15.
//  Copyright © 2018年 zcp. All rights reserved.
//

import Cocoa

class Problem15: NSObject {
    
    /*
     
     -100 -100 -100 -11 -10 ... 0 ... 10 11 21
     -100...0不重复的遍历负数，另两个数一定在当前数字右边的数字中
     因为遍历时每次取的负数都不同，且只从右边的数字中找，所以不会出现重复
     -100: find in -11...21
     -11: find in -10...21
     ...
     0 结束
     
     上述也可从正数开始遍历，21...0
     
     优化
     1.排序时候可以记录是正数多还是负数多，来选择是从正数还是从负数，负数多遍历负数，正数多遍历正数
     1000个负数，2个正数
     遍历负数：1000 + 1000*2
     遍历正数：2 + 2*1000
     */
    
    func threeSum(_ nums: [Int]) -> [[Int]] {
        var arr = nums.sorted()
        var ret = [[Int]]()
        if arr.count<=2 {
            return ret
        }
        
        for i in 0..<arr.count-2 {
            let first = arr[i]
            if first>0 {
                break
            }
            if i > 0 && arr[i] == arr[i-1] {
                continue
            }
            var left = i+1
            var right = arr.count-1
            while left<right {
                let second = arr[left]
                let third = arr[right]
                
                if first+second+third == 0 {
                    ret.append([first, second, third])
                    while left < right && arr[left] == arr[left+1] {
                        left += 1
                    }
                    while left < right && arr[right] == arr[right-1] {
                        right -= 1
                    }
                    left += 1
                    right -= 1
                } else if first+second+third < 0 {
                    left += 1
                } else {
                    right -= 1
                }
            }
        }
        return ret
    }
    
    
    // 1548ms
    func threeSum2(_ nums: [Int]) -> [[Int]] {
        var resultArr = Array<Array<Int>>()
        var processedNums = Array<Int>()
        // key: 数字值, value: 出现的次数
        var map = Dictionary<Int, Int>()
        // 判重可以通过排序解决 和string set "-1,-1,2" "-1,-1,2"
        var judgeSet = Set<String>()
        
        // 保存每个值出现的次数，且去重
        // 耗时很小
        for i in 0..<nums.count {
            let num = nums[i]
            var count:Int = 1
            
            if map.keys.contains(num) {
                count = map[num]! + 1
            }
            map[num] = count
            if count <= 3 {
                processedNums.append(num)
            }
        }
        
        for i in 0..<processedNums.count {
            
            for j in (i+1)..<processedNums.count {
                let numI = processedNums[i]
                let numJ = processedNums[j]
                
                let numO = (numI + numJ) * -1
                var numOCount = 0
                
                if (map.keys.contains(numO)) {
                    numOCount = map[numO]!
                    
                    if numO == numI {
                        numOCount -= 1
                    }
                    if numO == numJ {
                        numOCount -= 1
                    }
                }
                
                if numOCount > 0 {
                    let judgeString = self.getJudgeString(numI, numJ, numO)
                    if !judgeSet.contains(judgeString) {
                        resultArr.append([numI, numJ, numO])
                        judgeSet.insert(judgeString)
                    }
                }
            }
        }
        return resultArr
    }
    
    func getJudgeString(_ a:Int, _ b:Int, _ c:Int) -> String {
        var ta = a
        var tb = b
        var tc = c
        var t: Int = 0
        
        if ta > tb {
            t = ta
            ta = tb
            tb = t
        }
        if tb > tc {
            t = tb
            tb = tc
            tc = t
        }
        if ta > tb {
            return "\(tb)\(ta)"
        } else {
            return "\(ta)\(tb)"
        }
    }
}
