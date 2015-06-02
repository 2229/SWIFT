//
//  main.swift
//  MostFrequentLetter
//
//  Created by Rudiney Cardoso on 6/1/15.
//  Copyright (c) 2015 General Software. All rights reserved.
//

import Foundation

func mostFrequentLetter(word: String) ->Character {
    
    var result = [Character: Int]()
    
    for letter in word {
        if let count = result[letter] {
            result[letter] = count + 1
        }
        else {
            result[letter] = 1
        }
    }
    return sorted(result) { $0.1 > $1.1 }[0].0
}

println(mostFrequentLetter("abbccddeeffffgxxuiiiiiii"))

