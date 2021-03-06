//
//  main.swift
//  IsSubsetSum
//
//  Created by Rudiney Cardoso on 6/1/15.
//  Copyright (c) 2015 General Software. All rights reserved.
//

import Foundation

/*
findValidSubsets(sum,arr,idx,currSolution):
if (sum == 0):
print currSolution
if (sum < 0): //trim the search, it won't be succesful
return
//one possibility: don't take the current candidate
findPermutations(sum,arr,idx+1,currSolution)

//second poassibility: take the current candidate
currSolution.add(arr[idx])
findPermutations(sum-arr[idx],arr,idx+1,currSolution)

//clean up before returning:
currSolution.removeLast()


*/



func isSubsetSum(set: [Int], index: Int, sum: Int) ->Bool {
    if sum == 0 { return true }
    if sum != 0 && index == 0 { return false }
    
    if (set[index-1] > sum) { return isSubsetSum(set, index-1, sum) }
    
    return isSubsetSum(set, index-1, sum) || isSubsetSum(set, index-1, sum-set[index-1])
}

let data = [1,2,3,4,10,12]

println(isSubsetSum([1,2,3,5,10,12],data.count, 23))
