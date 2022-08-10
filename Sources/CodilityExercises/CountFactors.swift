//
//  CountFactors.swift
//  
//
//  Created by Mary Moreira on 10/08/2022.
//

import Foundation

struct CountFactors {
    static func solution(_ N : Int) -> Int {
        if N == 1 { return 1 }
        var factorsCount = 0
        let maxValue = Int(sqrt(Double(N)))
        
        for i in 1 ... maxValue where N % i == 0 { factorsCount += 2 }
        if maxValue * maxValue == N { factorsCount -= 1 }
        return factorsCount
    }
}
