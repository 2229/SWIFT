//
//  main.swift
//  Combination
//
//  Created by Rudiney Cardoso on 6/1/15.
//  Copyright (c) 2015 General Software. All rights reserved.
//

import Foundation

func combination(var set: [Int], index: Int) -> [[Int]] {
    
    if index == 0 { return [[]] }
    
    if set.count == 0 { return [] }
    
    let head = [set[0]]
    
    let subset = combination(set, index - 1)
    
    var result = subset.map { head + $0 }
    
    set.removeAtIndex(0)
    
    result += combination(set, index)
    
    return result
}


println(combination([1,2,3], 2))
