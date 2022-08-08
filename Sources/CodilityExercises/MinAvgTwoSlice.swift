//
//  MinAvgTwoSlice.swift
//  
//
//  Created by Mary Moreira on 08/08/2022.
//

import Foundation

struct MinAvgTwoSlice {
    
    static func average(numbers: [Int]) -> Double {
        var sum = 0
        for number in numbers {
            sum += number
        }
        let  ave : Double = Double(sum) / Double(numbers.count)
        return ave
    }
    
    static func solution(_ A : inout [Int]) -> Int {
        var lessAverageIndex = 0
        // enumerated new array and save previous index for the correct position of the received array
        let sortedElementsWithPreviousIndex = A.enumerated().sorted {$0.element < $1.element}
        
        //always the two first elements of the array will be the smaller so the average will be also
        if let firstElementIndex = sortedElementsWithPreviousIndex.first?.offset {
           let secondElementIndex = sortedElementsWithPreviousIndex[1].offset
            //between two sizes we should compare min value and return
            lessAverageIndex = min(firstElementIndex,secondElementIndex)
        }
        
        return lessAverageIndex
        
    }
    
    
}


