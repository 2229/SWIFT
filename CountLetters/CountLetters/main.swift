//
//  main.swift
//  CountLetters
//
//  Created by Rudiney Cardoso on 6/1/15.
//  Copyright (c) 2015 General Software. All rights reserved.
//

import Foundation

func countLetters(word: String) -> [Character: Int] {
    
    var result = [Character: Int]()
    
    for letter in word {
        if let count = result[letter] {
            result[letter] = count + 1
        }
        else {
            result[letter] = 1
        }
    }
    return result
}

println(countLetters("abbcccddddeeffgggdddxxx"))

