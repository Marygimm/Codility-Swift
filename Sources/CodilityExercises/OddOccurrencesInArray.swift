//
//  OddOccurrencesInArray.swift
//  
//
//  Created by Mary Moreira on 07/08/2022.
//

import Foundation

struct OddOccurrencesInArray {
    
    static func unpairElement(_ A : inout [Int]) -> Int {
        
        var numberNotPared = 0
        
        A.forEach { int in
            let testArray = A.filter { $0 == int }
            //remember that on the array Only one time its going to appear a not pared number
            if testArray.count == 1, let uniqueValue = testArray.first {
                numberNotPared = uniqueValue
            }
        }
        return numberNotPared
        
    }
}
