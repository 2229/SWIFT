//
//  main.swift
//  Factorial
//
//  Created by Rudiney Cardoso on 6/1/15.
//  Copyright (c) 2015 General Software. All rights reserved.
//

import Foundation

func factorial(n: Int) ->Int {
    if n<=1 { return 1 }
    return n * factorial(n-1)
}

println(factorial(5))

