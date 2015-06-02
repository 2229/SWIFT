//
//  main.swift
//  ContainSubString
//
//  Created by Rudiney Cardoso on 6/1/15.
//  Copyright (c) 2015 General Software. All rights reserved.
//

import Foundation

func containSubString(string: String, substring: String) ->Bool {
    
    for x in 0..<count(string) {
        var found = true
        for y in 0..<count(substring) {
            let start = (x+y<count(string)) ? x+y : x
            if string[advance(string.startIndex, start)] != substring[advance(substring.startIndex, y)] {
                found=false
                break
            }
        }
        if found { return true }
    }
    return false
}

println(containSubString("12345678", "345"))

