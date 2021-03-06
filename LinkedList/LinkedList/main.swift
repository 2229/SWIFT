//
//  main.swift
//  LinkedList
//
//  Created by Rudiney Cardoso on 6/3/15.
//  Copyright (c) 2015 General Software. All rights reserved.
//

import Foundation

class LinkedList {
    var root : Node?
    
    func search(data: String) -> Node? {
        return root?.search(data)
    }
    func add(data: String) {
        if let root = self.root { root.add(data) }
        else { self.root = Node(data) }
    }
}

class Node {
    var data: String
    var next: Node?
    
    init(_ data: String) {
        self.data = data
    }
    func add(data: String) {
        if let nextNode = self.next { nextNode.add(data) }
        else { self.next = Node(data) }
    }
    func search(data: String) -> Node? {
        if self.data == data { return self }
        else if let nextNode = self.next { return nextNode.search(data) }
        else { return nil }
    }
}

extension Node: Printable {
    var description : String {
        return "node: \(self.data)"
    }

}

let linkedList = LinkedList()


linkedList.add("samsung")
linkedList.add("yahoo")
linkedList.add("google")
linkedList.add("microsoft")
linkedList.add("apple")

println(linkedList.search("google"))




