//
//  Nesting.swift
//  
//
//  Created by Mary Moreira on 10/08/2022.
//

import Foundation

struct Nesting {
    //The following issues have been detected: wrong answers, timeout errors.
    
//    For example, for the input '' the solution returned a wrong answer (got 0 expected 1).
    static func solution(_ S : inout String) -> Int {
        var arr = S.map { String($0) }
        guard arr.count % 2 == 0, arr.count >= 4 else { return 0 }

        var areTheStringNested: Bool = false
        
        
        while !arr.isEmpty {
            if let lastElement = arr.popLast() {
//                areTheStringNested = Brackets.checkIfAreCorrespondingElement(array: [arr.removeFirst(), lastElement])
                if !areTheStringNested {
                    break
                }
            }
        }
        return areTheStringNested ? 1 : 0
    }
}
