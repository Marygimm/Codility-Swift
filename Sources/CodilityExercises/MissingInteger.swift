//
//  MissingInteger.swift
//  
//
//  Created by Mary Moreira on 08/08/2022.
//

import Foundation

struct MissingInteger {
    
    //The following issues have been detected: wrong answers, timeout errors.
    
//    For example, for the input [2] the solution returned a wrong answer (got 3 expected 1).
    
    static func solution(_ A : inout [Int]) -> Int {
        guard let maxNumber = A.max(), maxNumber > 0 else { return 1 }
        let sortedArray = A.sorted { $0 < $1 }.removeDuplicates()
        var elementThatBreaksConsecutive = 0
                
        for element in sortedArray {
            if !sortedArray.contains(element + 1) {
                elementThatBreaksConsecutive = element
                break
            }
        }
        return elementThatBreaksConsecutive + 1
        
    }
}


extension Array where Element:Equatable {
    func removeDuplicates() -> [Element] {
        var result = [Element]()
        
        for value in self {
            if result.contains(value) == false {
                result.append(value)
            }
        }
        
        return result
    }
}
