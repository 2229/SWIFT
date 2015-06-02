//
//  main.swift
//  ArrayWithoutDuplicates
//
//  Created by Rudiney Cardoso on 6/1/15.
//  Copyright (c) 2015 General Software. All rights reserved.
//

import Foundation

func arrayWithoutDuplicates(var items: [String]) -> [String] {
    
    for var x=0; x<items.count; ++x {
        for var y=0;y<items.count; ++y {
            if x != y && items[x]==items[y] {
                items.removeAtIndex(y)
            }
        }
    }
    return items
}

println(arrayWithoutDuplicates(["abc","abcd","123","123","123","zxy","123"]))

