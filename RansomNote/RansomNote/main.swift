//
//  main.swift
//  RansomNote
//
//  Created by Rudiney Cardoso on 6/3/15.
//  Copyright (c) 2015 General Software. All rights reserved.
//

import Foundation

func isRansomNote(note: String, magazine: String) ->Bool {
    
    var result = [String: Int]()
    
    for word in magazine.componentsSeparatedByString(" ") {
        if let count = result[word] {
            result[word] = count + 1
        }
        else {
            result[word] = 1
        }
    }
    
    for word in note.componentsSeparatedByString(" ") {
        if let count = result[word] {
            result[word] = count - 1
        }
        else {
            result[word] = -1
        }
    }
    
    return Array(result.values).filter { $0 < 0 }.count==0

}

println(isRansomNote("I found a bug, a insect, a virus", "virus and bacteria is found in bugs"))
println(isRansomNote("I found a bug, an insect", "They found a bug, I found an insect"))