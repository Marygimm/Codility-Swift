//
//  MinPerimeterRectangle.swift
//  
//
//  Created by Mary Moreira on 11/08/2022.
//

import Foundation

struct MinPerimeterRectangle {
    static func solution(_ N : Int) -> Int {
        
        var index = 1
        var result = Int.max
        
        while index * index <= N {
            
            if N % index == 0 {
                result = min(result, 2 * (N / index + index))
            }
            index += 1
        }
        
        return result
        
    }
    
    static func solution2(_ N : Int) -> Int {
    var result = Int.max

    
    let maxValue = Int(sqrt(Double(N)))
    
    for index in (1 ... maxValue).reversed() where N % index == 0 {
        result = min(result, 2 * (index + N / index )) }
    return result
    }

}
