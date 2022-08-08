//
//  PassingCars.swift
//  
//
//  Created by Mary Moreira on 08/08/2022.
//

import Foundation

struct PassingCars {
    
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

}
