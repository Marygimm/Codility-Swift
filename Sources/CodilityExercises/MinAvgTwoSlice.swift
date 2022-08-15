//
//  MinAvgTwoSlice.swift
//  
//
//  Created by Mary Moreira on 08/08/2022.
//

import Foundation

struct MinAvgTwoSlice {
    static func average(numbers: [Int]) -> Float {
        var sum = 0
        for number in numbers {
            sum += number
        }
        let  ave : Float = Float(sum) / Float(numbers.count)
        return ave
    }
    
    static func solution(_ A : inout [Int]) -> Int {
   
        var startIndex = 0
        var minimum: Float = Float(Int.max)
        
        // we are going to iterate and check the average of the first 2 elements and the first 3 elements and we are keeping the index and the minAverage between this two
        for i in (0..<A.count-2) {
           let firstCreatedArray = [A[i],A[i+1],A[i+2]]
           let secondCreatedArray = [A[i],A[i+1]]
            let firstAverage = average(numbers: firstCreatedArray)
            let secondAverage = average(numbers: secondCreatedArray)
            
            if minimum > firstAverage || minimum > secondAverage {
                minimum = min(firstAverage,secondAverage)
                startIndex = i
            }
            
        }
        
        //because we iterate in A.count-2 we should evaluate if the last slice contain a smaller average than previous
        let averageOfLastTwoElements = average(numbers: [A[A.count-1], A[A.count-2]])
        if minimum > averageOfLastTwoElements {
            return A.count-2
        }
        
        return startIndex
        
    }
    
    
}


