//
//  main.swift
//  RankingWords
//
//  Created by Rudiney Cardoso on 6/1/15.
//  Copyright (c) 2015 General Software. All rights reserved.
//

import Foundation

func rankingWords(phrase: String) -> [(String, Int)] {

    var result = [String: Int]()
    
    for word in phrase.componentsSeparatedByString(" ") {
        if let count = result[word] {
            result[word] =  count + 1
        }
        else {
            result[word] = 1
        }
    }
    return sorted(result) { $0.1 > $1.1 }
}

println(rankingWords("one dog one cat, two lions weak lions two two two two"))
