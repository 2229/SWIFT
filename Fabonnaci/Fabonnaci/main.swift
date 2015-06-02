//
//  main.swift
//  Fabonnaci
//
//  Created by Rudiney Cardoso on 6/1/15.
//  Copyright (c) 2015 General Software. All rights reserved.
//

import Foundation

func fabonnaci() {
    
    var previous = 0
    var next = 1
    var total = 0
    
    for x in 0...20 {
        println(total)
        
        total = previous + next
        next = previous
        previous = total
    }
}

fabonnaci()

