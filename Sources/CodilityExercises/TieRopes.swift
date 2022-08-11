//
//  TieRopes.swift
//  
//
//  Created by Mary Moreira on 11/08/2022.
//

import Foundation

struct TieRopes {
    
    static func solution(_ K : Int, _ A : inout [Int]) -> Int {
        
        var currentLengthCounter = 0
        var roupes = 0
        for element in (0..<A.count) {
            currentLengthCounter += A[element]
            if currentLengthCounter >= K {
                roupes += 1
                currentLengthCounter = 0
            }
        }
        return roupes
    }
}
