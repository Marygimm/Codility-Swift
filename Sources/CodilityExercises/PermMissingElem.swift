//
//  PermMissingElem.swift
//  
//
//  Created by Mary Moreira on 07/08/2022.
//

import Foundation

struct PermMissingElem {
    static func solution(_ A : inout [Int]) -> Int {
        // we should sort also to make sure the calculations are correct
        let set = A.sorted { $0 < $1 }
        guard !A.isEmpty, A.contains(1) else { return 1 }
        
        //here if we make sure that the set must start with 1
        for i in 0..<set.count{
            if set[i] != i+1 {
                return i+1
            }
        }
        
        //here just to move the pointer an compare the next element if is sum of set[i] + 1
//        for i in 0..<set.count-1{
//            if set[i+1] != set[i]+1 {
//                return set[i]+1
//            }
//        }
        
        return set[set.count-1] + 1
    }
    
    static func solution2(_ A : inout [Int]) -> Int {
        let sumOfArrayWithMissingElement = ((A.count + 1) * (A.count + 2))/2
        let sumOfInputArray = A.reduce(0, +)
        
        return sumOfArrayWithMissingElement - sumOfInputArray
    }
 
    
}
