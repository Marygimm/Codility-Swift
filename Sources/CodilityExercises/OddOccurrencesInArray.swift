//
//  OddOccurrencesInArray.swift
//  
//
//  Created by Mary Moreira on 07/08/2022.
//

import Foundation

struct OddOccurrencesInArray {
    
    static func unpairElement(_ A : inout [Int]) -> Int {
        let count = A.count
        guard count > 0 else { return 0 }
        if count == 1 { return A[0] }
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
    
    static func solution(_ A : inout [Int]) -> Int {
        let count = A.count
        guard count > 0 else { return 0 }
        if count == 1 { return A[0] }
        var dict = Set<Int>()
            
        for number in A {
            if dict.contains(number) {
                dict.remove(number)
            } else {
                dict.insert(number)
            }
        }
            
        return dict.first!
    }
}
