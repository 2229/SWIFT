//
//  main.swift
//  FabonnaciRecursive
//
//  Created by Rudiney Cardoso on 6/1/15.
//  Copyright (c) 2015 General Software. All rights reserved.
//

import Foundation

func fabonnaci(n: Int) ->Int {
    if n<=1 { return n }
    return fabonnaci(n-1) + fabonnaci(n-2)
}

for x in 0..<20 {
    println(fabonnaci(x))
}
