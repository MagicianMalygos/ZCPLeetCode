//
//  Problem19.swift
//  ZCPLeetCodeSwift
//
//  Created by 朱超鹏 on 2018/11/26.
//  Copyright © 2018年 zcp. All rights reserved.
//

import Cocoa

class Problem19: NSObject {
    
    /*
     tempNode遍历到最后，
     nNode先等n步，然后跟随tempNode遍历
     */
    // 16ms
    func removeNthFromEnd(_ head: ListNode?, _ n: Int) -> ListNode? {
        let tempHead = ListNode(0)
        tempHead.next = head
        var fastPtr: ListNode? = head
        var slowPtr: ListNode? = tempHead
        var index: Int = 0
        
        while fastPtr != nil {
            fastPtr = fastPtr!.next
            index += 1
            if index > n {
                slowPtr = slowPtr!.next
            }
        }
        slowPtr?.next = slowPtr?.next?.next
        return tempHead.next
    }
}
