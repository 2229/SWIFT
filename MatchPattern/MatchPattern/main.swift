//
//  main.swift
//  MatchPattern
//
//  Created by Rudiney Cardoso on 6/2/15.
//  Copyright (c) 2015 General Software. All rights reserved.
//

import Foundation

func matchPattern(dictionary: [String], var pattern: String) -> [String] {
    
    var indexes = [Int]()
    var normalizedPattern = String()
    
    for (index,character) in enumerate(pattern) {
        if character=="." {
            indexes.append(index)
        }
        else {
            normalizedPattern.append(character)
        }
    }
    
    var result = [String]()
    
    for word in dictionary {
        var normalizedWord = word
        
        for index in indexes {
            let start = advance(normalizedWord.startIndex, index)
            normalizedWord.removeAtIndex(start)
        }
        if normalizedWord.lowercaseString == normalizedPattern.lowercaseString {
            result.append(word)
        }
    }
    
    return result
    
}

println(matchPattern(["Cat","Cot", "cow", "Cut", "cat", "Apple", "Watch","cutter"],"c.t"))


