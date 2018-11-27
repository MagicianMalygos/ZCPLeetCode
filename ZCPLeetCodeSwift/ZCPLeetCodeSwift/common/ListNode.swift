//
//  ListNode.swift
//  ZCPLeetCodeSwift
//
//  Created by 朱超鹏 on 2018/11/27.
//  Copyright © 2018年 zcp. All rights reserved.
//

import Cocoa

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
