//
//  Problem2.swift
//  ZCPLeetCodeSwift
//
//  Created by 朱超鹏 on 2018/11/13.
//  Copyright © 2018年 zcp. All rights reserved.
//

import Cocoa

class Problem2: NSObject {
    // 96ms
    func addTwoNumbers(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
        let resultL:ListNode? = ListNode(0)
        var currResultL:ListNode? = resultL
        var currL1:ListNode? = l1
        var currL2:ListNode? = l2
        var carry:Int = 0
        
        while (currL1 != nil && currL2 != nil) || (carry != 0) {
            let v1 = (currL1 != nil) ? currL1?.val : 0
            let v2 = (currL2 != nil) ? currL2?.val : 0
            
            // 计算
            let sum:Int = v1! + v2! + carry
            let remainder:Int = sum % 10
            carry = sum / 10
            
            // 处理句柄
            currResultL?.next = ListNode(remainder)
            currResultL = currResultL?.next;
            currL1 = currL1?.next
            currL2 = currL2?.next
        }
        
        // 尾部处理
        if currL1 != nil {
            currResultL?.next = currL1
        }
        if currL2 != nil {
            currResultL?.next = currL2
        }
        
        return resultL?.next
    }
}
