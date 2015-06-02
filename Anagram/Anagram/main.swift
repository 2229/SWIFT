//
//  main.swift
//  Anagram
//
//  Created by Rudiney Cardoso on 6/1/15.
//  Copyright (c) 2015 General Software. All rights reserved.
//

import Foundation

func anagram(words: [String]) -> [String: [String]] {
    
    var result = [String: [String]]()
    
    for word in words {
        if var item = result[String(sorted(word))] {
            item.append(word)
        }
        else {
            result[String(sorted(word))] = [word]
        }
    }
    return result
}

println(anagram(["123","321","213","312", "abc","bca","acb","xza"]))


