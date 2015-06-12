//
//  main.swift
//  Print Linked List Elements in Reverse order
//
//  Created by Rudiney Cardoso on 6/11/15.
//  Copyright (c) 2015 General Software. All rights reserved.
//

import Foundation

class Node {
    var data : Int?
    var next : Node?
    
    init(data: Int, next: Node?) {
        self.data=data
        self.next=next
    }
}

func printLinkedList(node: Node?) {
    if node == nil { return }
    printLinkedList(node?.next)
    println(node?.data)
}

var four = Node(data: 4, next: nil)
var three = Node(data: 3, next: four)
var two = Node(data: 2, next: three)
var one = Node(data: 1, next: two)

printLinkedList(one)

