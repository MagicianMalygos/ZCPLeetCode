//
//  main.swift
//  ZCPLeetCodeSwift
//
//  Created by 朱超鹏 on 2018/11/13.
//  Copyright © 2018年 zcp. All rights reserved.
//

import Foundation
import QuartzCore

public class ListNode: NSObject {
    public var val: Int = 0
    public var next: ListNode?
    public init(_ val: Int) {
        self.val = val
        self.next = nil
    }
    public init(_ arr: [Int]) {
        super.init()
        
        if arr.count == 0 {
            self.val = 0
            self.next = nil
            return
        }
        
        self.val = arr[0]
        var tempNode = self
        
        for i in 1..<arr.count {
            let node = ListNode(arr[i])
            tempNode.next = node
            tempNode = node
        }
    }
    public override var description: String {
        var desc: String = "\(self.val)"
        var tempNode: ListNode? = self.next
        while tempNode != nil {
            desc += " -> \(tempNode!.val)"
            tempNode = tempNode!.next
        }
        return desc
    }
}

let start = CACurrentMediaTime()

// problem1
//print(Problem1().twoSum([2, 7, 11, 15], 9))

// prblem2
//print(Problem2().addTwoNumbers(ListNode([2, 4, 3]), ListNode([5, 6, 4]))!)

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

// problem15
//print(Problem15().threeSum([]))
//print(Problem15().threeSum([0]))
//print(Problem15().threeSum([0,0]))
//print(Problem15().threeSum([-1, 0, 1, 2, -1, -4]))

// problem16
//print(Problem16().threeSumClosest([], 1))

// problem17
//print(Problem17().letterCombinations("23"))
//print(Problem17().letterCombinations(""))


// problem19
print(Problem19().removeNthFromEnd(ListNode([1,2,3,4,5]), 3))
//print(Problem19().removeNthFromEnd(ListNode([1]), 0))


// problem21
//print(Problem21().mergeTwoLists(ListNode([1, 2, 4]), ListNode([1, 3, 4])))


// problem22
//print(Problem22().generateParenthesis(4))


// problem24
//print(Problem24().swapPairs(ListNode([]))!)
//print(Problem24().swapPairs(ListNode([1]))!)
//print(Problem24().swapPairs(ListNode([1,2]))!)
//print(Problem24().swapPairs(ListNode([1,2,3]))!)
//print(Problem24().swapPairs(ListNode([1,2,5,6,10,11]))!)


// problem25
//print(Problem25().reverseKGroup(ListNode([1,2,3,4,5]), 2)!)
//print(Problem25().reverseKGroup(ListNode([]), 2)!)
//print(Problem25().reverseKGroup(ListNode([1]), 2)!)
//print(Problem25().reverseKGroup(ListNode([1,2]), 2)!)
//print(Problem25().reverseKGroup(ListNode([1,2,3]), 2)!)


// problem26
//var nums = [0,0,1,1,1,2,2,3,3,4]
//print(Problem26().removeDuplicates(&nums))


// problem27
//var nums = [0,1,2,2,3,0,4,2]
//var nums = [3,2,2,3]
//var nums = [3]
//print(Problem27().removeElement(&nums, 3))
//print(Problem27().removeElement2(&nums, 3))


// problem28
//print(Problem28().strStr("aaaaa", "bba"))
//print(Problem28().strStr("hello", "ll"))
//print(Problem28().strStr("aaaaa", ""))


// problem29
//print(Problem29().divide(10, 3))
//print(Problem29().divide(-10, -3))
//print(Problem29().divide(7, -3))
//print(Problem29().divide(-7, 3))
//print(Problem29().divide(0, 3))
//print(Problem29().divide(3, 3))
//print(Problem29().divide(-3, -3))
//print(Problem29().divide(Int(INT_MAX), 10))


// problem34
//print(Problem34().searchRange([1, 3], 1))
//print(Problem34().searchRange([5,7,8,8,8,10], 8))
//print(Problem34().searchRange([5,7,7,8,8,10], 5))
//print(Problem34().searchRange([5,7,7,8,8,10], 10))
//print(Problem34().searchRange([5,7,7,8,8,10], 1))
//print(Problem34().searchRange([5,7,7,8,8,10], 11))
//print(Problem34().searchRange([], 0))


// problem35
//print(Problem35().searchInsert([1,3,5,6], 5))
//print(Problem35().searchInsert([1,3,5,6], 4))
//print(Problem35().searchInsert([1,3,5,6], 0))
//print(Problem35().searchInsert([1,3,5,6], 10))
//print(Problem35().searchInsert([], 5))
//print(Problem35().searchInsert([1], 0))


let end = CACurrentMediaTime()
print("方法耗时为：\((end-start)*1000)ms")
