//
//  Problem21.swift
//  ZCPLeetCodeSwift
//
//  Created by 朱超鹏 on 2018/11/17.
//  Copyright © 2018年 zcp. All rights reserved.
//

import Cocoa

class Problem21: NSObject {
    
    // 28ms
    func mergeTwoLists(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
        
        let result = ListNode(0)
        var currentNode = result
        var currentL1Node = l1
        var currentL2Node = l2
        
        while currentL1Node != nil && currentL2Node != nil {
            if currentL1Node!.val < currentL2Node!.val {
                currentNode.next = ListNode(currentL1Node!.val)
                currentL1Node = currentL1Node?.next
            } else {
                currentNode.next = ListNode(currentL2Node!.val)
                currentL2Node = currentL2Node?.next
            }
            currentNode = currentNode.next!
        }
        
        if currentL1Node == nil {
            currentNode.next = currentL2Node
        } else if currentL2Node == nil {
            currentNode.next = currentL1Node
        }
        
        return result.next
    }
}
