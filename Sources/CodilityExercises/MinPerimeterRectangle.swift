//
//  MinPerimeterRectangle.swift
//  
//
//  Created by Mary Moreira on 11/08/2022.
//

import Foundation


//we are going to limit our search to sqrt(N) and this will be the smallest number near to a square < perimeter
struct MinPerimeterRectangle {
    static func solution(_ N : Int) -> Int {
        var result = Int.max
        
        
        let maxValue = Int(sqrt(Double(N)))
        
        for aSide in (1 ... maxValue).reversed() where N % aSide == 0 {
            let bSide = N/aSide
            result = min(result, (2 * bSide + 2 * aSide)) }
        return result
    }
    
    static func solution2(_ N : Int) -> Int {
        
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

}
