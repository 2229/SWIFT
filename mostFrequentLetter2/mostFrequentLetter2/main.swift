//
//  main.swift
//  mostFrequentLetter2
//
//  Created by Rudiney Cardoso on 6/1/15.
//  Copyright (c) 2015 General Software. All rights reserved.
//

import Foundation

func mostFrequentLetter2(word: String) ->Character {
    
    var result = [Character: Int]()
    
    var lastCount = 0
    var lastLetter = ""
    
    for letter in word {
        if let count = result[letter] {
            result[letter] = count + 1
            if count>lastCount {
                lastCount=count
                lastLetter=String(letter)
            }
        }
        else {
            result[letter] = 1
        }
    }
    return Character(lastLetter)
}

println(mostFrequentLetter2("abbcccddddeffffghhhhxxxxxz"))

