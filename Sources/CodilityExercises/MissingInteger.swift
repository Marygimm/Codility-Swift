//
//  MissingInteger.swift
//  
//
//  Created by Mary Moreira on 08/08/2022.
//

import Foundation

struct MissingInteger {
    
    static func solution(_ A : inout [Int]) -> Int {
        A = A.sorted { $0 < $1 }
        
        //if the smallest element of the array is negative, then the minimum positive number should be 1
        if A[A.count-1] <= 0 {
            return 1
        }
        
        //there is one specific edge case [3,4,5,6,7] the minimum positive number is 1. So we should verify first is the array contais 1.
        if !A.contains(1) {
            return 1
        }
        
        for i in (0..<A.count - 1) {
//          we should check if the next element is the sum of element + 1 or otherwise that would be the minimum positive missing (also check that numbers are not same
//            if A[i] > 0, A[i+1] != A[i]+1,  A[i+1] != A[i] {
//                return A[i] + 1
//            }
            
            //in a fancy way, if the next number less the actual number has a difference that is bigger that 1 (if is 0 its same number, and if its one are consecutives) then the next positive number will be the actual element plus 1.
            if A[i] > 0, A[i+1] - A[i] > 1 {
                return A[i] + 1
            }
        }
        
     //if there is no missing element on the given array the minimum positive is the next element missing in the array [1,2,3,4] --> 5
        return A[A.count-1]+1
    }
}
