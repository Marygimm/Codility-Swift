//
//  MinMaxDivision.swift
//  
//
//  Created by Mary Moreira on 13/08/2022.
//

import Foundation

struct MinMaxDivision {
    static func solution(_ K : Int, _ M : Int, _ A : inout [Int]) -> Int {
        var minValue = 0
        var maxValue = 0
        
        
        for element in A {
            maxValue += element
            minValue = max(element, minValue)
        }
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
