//
//  main.swift
//  DetectLoopInSinglyLinkedList
//
//  Created by Rudiney Cardoso on 6/2/15.
//  Copyright (c) 2015 General Software. All rights reserved.
//

import Foundation

class Node : NSObject {
    var data: Int?
    var next: Node?
}

func detectLoop(root: Node?) ->Bool {
    
    var current = root
    var next =  root!.next
    
    while current != nil {
        if current == next {
            return true
        }
        
        current =  current!.next
        
        if next != nil {
            if next!.next != nil {
                next = next!.next!.next?.next
            }
        }
        else { next = nil }
    }
    
    return false
}

var root = Node()
var second = Node()
var third = Node()
var fourth = Node()

root.data = 1
second.data = 2
third.data = 3
fourth.data = 4

root.next=second
second.next=third
third.next=fourth
fourth.next=second

println("loop? \(detectLoop(root))")

fourth.next=nil

println("loop? \(detectLoop(root))")



