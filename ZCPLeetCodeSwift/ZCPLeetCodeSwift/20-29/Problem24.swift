//
//  Problem24.swift
//  ZCPLeetCodeSwift
//
//  Created by 朱超鹏 on 2018/11/19.
//  Copyright © 2018年 zcp. All rights reserved.
//

import Cocoa

class Problem24: NSObject {
    // 28ms
    func swapPairs(_ head: ListNode?) -> ListNode? {
        if head == nil {
            return nil
        } else if head?.next == nil {
            return head
        }
        
        let result: ListNode? = head!.next
        var preNode: ListNode? = ListNode(0)
        var currNode: ListNode? = head
        var nextNode: ListNode? = head?.next
        
        while currNode != nil && currNode?.next != nil {
            currNode?.next = nextNode?.next
            nextNode?.next = currNode
            preNode?.next = nextNode
            
            preNode = currNode
            currNode = currNode?.next
            nextNode = currNode?.next
        }
        return result
    }
}
