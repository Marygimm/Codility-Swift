//
//  PermMissingElem.swift
//  
//
//  Created by Mary Moreira on 07/08/2022.
//

import Foundation

struct PermMissingElem {
    // we have no algorithms package on codility, use solution 2
    static func solution(_ A : inout [Int]) -> Int {
        // we should sort also to make sure the calculations are correct
        let set = A.sorted { $0 < $1 }
        guard !A.isEmpty, A.contains(1) else { return 1 }
        
        for i in 0..<set.count{
            if set[i] != i+1 {
                return i+1
            }
        }
        
        return set[set.count-1] + 1
    }
    
    static func solution2(_ A : inout [Int]) -> Int {
        let sumOfArrayWithMissingElement = ((A.count + 1) * (A.count + 2))/2
        let sumOfInputArray = A.reduce(0, +)
        
        return sumOfArrayWithMissingElement - sumOfInputArray
    }
    
    
}
