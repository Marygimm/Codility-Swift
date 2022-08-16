//
//  MaxSliceSum.swift
//  
//
//  Created by Mary Moreira on 10/08/2022.
//

import Foundation

struct MaxSliceSum {
    static func solution(_ A : inout [Int]) -> Int {
        var currentSum = 0
        var maximumSum = Int.min
        var currentValue: Int
        
            for index in 0..<A.count {
                currentValue = A[index]
                currentSum = max(currentSum + currentValue, currentValue)
                maximumSum = max(currentSum, maximumSum)
            }
            
            return maximumSum
    }
    
    static func solution2(_ A : inout [Int]) -> Int {
        var currentSum = 0
        var maximumSum = A[0]
        var currentValue: Int
        
            for index in 0..<A.count {
                currentValue = A[index]
                currentSum += currentValue
                maximumSum = max(currentSum, maximumSum)
                
                if currentSum < 0 {
                    currentSum = 0
                }
            }
            
            return maximumSum
    }
}
