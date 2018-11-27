//
//  Problem25.swift
//  ZCPLeetCodeSwift
//
//  Created by 朱超鹏 on 2018/11/22.
//  Copyright © 2018年 zcp. All rights reserved.
//

import Cocoa

class Problem25: NSObject {
    // 84ms
    func reverseKGroup(_ head: ListNode?, _ k: Int) -> ListNode? {
        return reverse(nil, head, k)
    }
    
    func reverse(_ pre: ListNode?, _ curr: ListNode?, _ len: Int) -> ListNode? {
        // 1.保存headPre和tailNext
        // 2.head~tail的结点反转
        // 3.最后headPre.next = newHead，newTail.next = tailNext
        
        let headPreNode: ListNode? = pre
        var tailNextNode: ListNode?
        
        // 遍历len长度，判断是否有len长度的节点用于反转
        // 同时寻找尾节点的下一个节点
        var tempNode = curr
        for _ in 0..<len-1 {
            if tempNode == nil {
                break;
            }
            tempNode = tempNode?.next
        }
        // 如果并没有len长度的节点用于反转，则return当前的头结点
        if tempNode == nil {
            return curr
        }
        // 保存尾节点的下一个节点
        tailNextNode = tempNode?.next
        
        // 对len长度的节点反转
        let headHelpNode: ListNode? = curr
        var saveNode = curr
        for _ in 0..<len-1 {
            let reverseNode = headHelpNode?.next
            headHelpNode?.next = reverseNode?.next
            reverseNode?.next = saveNode
            saveNode = reverseNode
        }
        
        // 处理头尾，此时curr变成了尾节点，遍历之后的saveNode变成了头节点
        let newHeadNode = saveNode
        let newTailNode = curr
        
        if headPreNode != nil {
            headPreNode?.next = newHeadNode
        }
        newTailNode?.next = tailNextNode
        // 递归获取第二段的头结点
        newTailNode?.next = reverse(newTailNode, tailNextNode, len)
        
        return newHeadNode
    }
}
