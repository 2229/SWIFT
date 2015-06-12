//
//  main.swift
//  Reverse a Linked List using Recursion
//
//  Created by Rudiney Cardoso on 6/11/15.
//  Copyright (c) 2015 General Software. All rights reserved.
//

import Foundation

class Node {
    var data: Int
    var next: Node?
    init(data: Int, next: Node?) {
        self.data=data
        self.next=next
    }
}

func printLinkedList(node: Node?) {
    if node == nil { return }
    println(node?.data)
    printLinkedList(node?.next)
}

func reverseLinkedList(node: Node?, previous: Node?) {
    
    if node == nil { return }
    
    reverseLinkedList(node?.next, node)
    
    node!.next=previous
}

var four = Node(data: 4, next: nil)
var three = Node(data: 3, next: four)
var two = Node(data: 2, next: three)
var one = Node(data: 1, next: two)

reverseLinkedList(one, nil)

printLinkedList(four)
