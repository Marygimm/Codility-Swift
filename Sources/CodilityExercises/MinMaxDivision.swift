//
//  MinMaxDivision.swift
//  
//
//  Created by Mary Moreira on 13/08/2022.
//

import Foundation

struct MinMaxDivision {
    static func solution(_ K : Int, _ M : Int, _ A : inout [Int]) -> Int {
        var minValue = A.max() ?? 0
        var maxValue = A.reduce(0,+)

        var bestAnswer = maxValue

        while (minValue <= maxValue) {
            let midPoint = (minValue + maxValue) / 2
            let blocks = checkBlocks(array: A, guess: midPoint)
            if (blocks > K) {
                minValue = midPoint + 1
            } else {
                maxValue = midPoint - 1
                if midPoint < bestAnswer {
                    bestAnswer = midPoint
                }
            }
        }
        
        
        return bestAnswer
    }
    
    static func checkBlocks(array: [Int], guess: Int) -> Int {
        var blocks = 1
        var blockSum = 0
        
        //we are going to check the value of each element and sum to check if it overloads the mid value when it overloads he creates another block
        for element in array {
            blockSum += element
            if blockSum > guess {
                blockSum = element
                blocks += 1
            }
        }
        return blocks
    }
}
