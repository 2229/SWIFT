//
//  main.swift
//  CombinationGeneric
//
//  Created by Rudiney Cardoso on 6/2/15.
//  Copyright (c) 2015 General Software. All rights reserved.
//

import Foundation

class User: Comparable, Printable {
    var name: String?
    var email: String?
    
    init(name: String, email: String) {
        self.name=name
        self.email=email
    }
    
    var description : String {
        return "\(self.name!)"
    }
}

func <(previous: User, next: User) ->Bool {
    return previous.name<next.name
}

func ==(previous: User, next: User) ->Bool {
    return previous.name==next.name && previous.email==next.email
}

func combination<T: Comparable>(var set: [T], n: Int) -> [[T]] {
    if n == 0 { return [[]] }
    if set.count == 0 { return [] }
    
    let head = [set[0]]
    let subset = combination(set, n-1)
    var result = subset.map { head + $0 }
    
    set.removeAtIndex(0)
    
    result += combination(set, n)
    
    return result
}

println(combination(
    [
        User(name: "mary", email: "beta@gmail.com"),
        User(name: "john", email: "john@gmail.com"),
        User(name: "paul", email: "paul@gmail.com"),
        User(name: "pit",  email: "lee@gmail.com"),
        User(name: "lee",  email: "lee@gmail.com")

    ], 2))

