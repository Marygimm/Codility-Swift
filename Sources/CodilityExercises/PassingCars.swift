//
//  PassingCars.swift
//  
//
//  Created by Mary Moreira on 08/08/2022.
//

import Foundation

struct PassingCars {
    // 100% correctness but 70% of task score
    static func solution(_ A : inout [Int]) -> Int {
        
        let positionOfEast =  A.indices.filter { A[$0] == 0}
        let positionOfWest =  A.indices.filter { A[$0] == 1}
        
        var possibleCombinations = 0
        
        for east in positionOfEast {
            for west in positionOfWest {
                if east < west {
                    possibleCombinations += 1
                }
            }
        }
        
        return possibleCombinations > 1000000000 ? -1 : possibleCombinations
        
    }
    
    // 100% task score solution
    
    static func solution2(_ A : inout [Int]) -> Int {
        
        var sumOfCarsEast = 0
        var sumOfPairsOfCrossingCars = 0
        
        // so we are goin to check the array once and save the values of east cars, if we find a west car we know that he can cross with the previous east cars, so we sum to a var the previous number of east cars 
        for i in (0..<A.count) {
            if A[i] == 0 {
                sumOfCarsEast += 1
            } else if A[i] == 1 {
                sumOfPairsOfCrossingCars += sumOfCarsEast
            }
        }
        
        return sumOfPairsOfCrossingCars > 1000000000 ? -1 : sumOfPairsOfCrossingCars
    }
    
}
