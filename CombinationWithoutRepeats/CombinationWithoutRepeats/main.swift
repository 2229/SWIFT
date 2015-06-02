//
//  main.swift
//  CombinationWithoutRepeats
//
//  Created by Rudiney Cardoso on 6/1/15.
//  Copyright (c) 2015 General Software. All rights reserved.
//

import Foundation

func combination(set: [Int], index: Int) -> [[Int]] {
    var result = [[Int]]()
    
    for x in 0..<set.count {
        if index==1 {
            result.append([set[x]])
        }
        else {
            let head = [set[x]]
            let subset = combination(Array(set[x+1..<set.count]), index-1)
            result += subset.map { head + $0 }
        }
    }
    return result
}

println(combination([1,2,3], 2))

