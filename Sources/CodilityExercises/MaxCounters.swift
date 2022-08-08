//
//
// MaxCounters.swift
//  
//
//  Created by Mary Moreira on 08/08/2022.
//

import Foundation

struct MaxCounters {
    
    static func solution(_ N : Int, _ A : inout [Int]) -> [Int] {
        
        var finalArray = Array(repeating: 0, count: N)

        let sumOfN = N + 1
        
        A.forEach { element in
            if 1<=element && element<=N {
               finalArray = increaseOneValueOnPosition(position: element, values: &finalArray)
            } else if element == sumOfN {
                finalArray = increaseToMaxValueInCounters(values: finalArray)
            }
        }
        
        
        return finalArray
    }
    
    static func increaseOneValueOnPosition(position: Int, values: inout [Int]) -> [Int] {
        values[position - 1] += 1
        return values
    }
    
    static func increaseToMaxValueInCounters(values: [Int]) -> [Int] {
        guard let maxValue = values.max() else { return [] }
        var newArray = [Int]()
        
        values.forEach { _ in
            newArray.append(maxValue)
        }
        
        return newArray
        }

}
