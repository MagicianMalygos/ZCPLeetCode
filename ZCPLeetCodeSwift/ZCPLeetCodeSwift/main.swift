//
//  main.swift
//  ZCPLeetCodeSwift
//
//  Created by 朱超鹏 on 2018/11/13.
//  Copyright © 2018年 zcp. All rights reserved.
//

import Foundation
import QuartzCore

let start = CACurrentMediaTime()

// problem1
//print(Problem1().twoSum([2, 7, 11, 15], 9))

// prblem2
//let l1_1 = ListNode(2)
//let l1_2 = ListNode(4)
//let l1_3 = ListNode(3)
//l1_1.next = l1_2
//l1_2.next = l1_3
//let l2_1 = ListNode(5)
//let l2_2 = ListNode(6)
//let l2_3 = ListNode(4)
//l2_1.next = l2_2
//l2_2.next = l2_3
//
//var result = Problem2().addTwoNumbers(l1_1, l2_1)
//while let r = result {
//    print("\(r.val)")
//    result = r.next
//}

// prblem3
//print(Problem3().lengthOfLongestSubstring("abawpooddddsss"))

// prblem4
//print(Problem4().findMedianSortedArrays([1, 3], [2]))

// prblem5
//print(Problem5().longestPalindrome("abccba"))

// prblem6
//print(Problem6().convert("PAYPALISHIRING", 3))

// problem7
//print(Problem7().reverse(1463847412))

// problem8
//print(Problem8().myAtoi("   +0 123"))

// problem9
//print(Problem9().isPalindrome(10))

// problem11
//print(Problem11().maxArea([1, 8, 6, 2, 5, 4, 8, 3, 7]))

// problem12
//print(Problem12().intToRoman(1994))

// problem13
//print(Problem13().romanToInt("MCMXCIV"))

// problem14
//print(Problem14().longestCommonPrefix(["aa", "a"]))
//print(Problem14().longestCommonPrefix(["filter", "fill", "file"]))
//print(Problem14().longestCommonPrefix(["car", "green", "orange"]))
//print(Problem14().longestCommonPrefix(["a"]))
//print(Problem14().longestCommonPrefix([""]))
//print(Problem14().longestCommonPrefix([]))

var arr = Array<Int>()
for i in -10...10 {
    arr.append(i)
}

// problem15
//print(Problem15().threeSum([]))
//print(Problem15().threeSum([0]))
//print(Problem15().threeSum([0,0]))
//print(Problem15().threeSum([-1, 0, 1, 2, -1, -4]))

// problem16
//print(Problem16().threeSumClosest([], 1))

// problem17
print(Problem17().letterCombinations("23"))
print(Problem17().letterCombinations(""))

let end = CACurrentMediaTime()
print("方法耗时为：\((end-start)*1000)ms")
