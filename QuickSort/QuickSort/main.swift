//
//  main.swift
//  QuickSort
//
//  Created by Rudiney Cardoso on 6/2/15.
//  Copyright (c) 2015 General Software. All rights reserved.
//

import Foundation

func quickSort<T: Comparable>(inout data: [T]) ->[T] {
    if data.count > 1 {
        var less = [T]()
        var equal = [T]()
        var greater = [T]()
        
        var pivot = data[0]
        
        for x in data {
            if x == pivot {
                equal.append(x)
            }
            else if x < pivot {
                less.append(x)
            }
            else {
                greater.append(x)
            }
        }
        quickSort(&less)
        quickSort(&greater)
        
        data = less + equal + greater
    }
    
    return data
}

var data = [1,2,5,3,9,2,3,70,30,0,20,33]

println(quickSort(&data))