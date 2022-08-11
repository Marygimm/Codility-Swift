//
//  ChocolatesByNumbers.swift
//  
//
//  Created by Mary Moreira on 11/08/2022.
//

import Foundation

struct ChocolatesByNumbers {
    
    static func solution(_ N : Int, _ M : Int) -> Int {
        return N/greatesCommonDivisor(elementOne: N, elementTwo: M)
     
    }
    
    static func greatesCommonDivisor(elementOne: Int, elementTwo: Int) -> Int {
        if elementOne % elementTwo == 0 {
        return elementTwo
        } else {
            return greatesCommonDivisor(elementOne: elementTwo, elementTwo: elementOne%elementTwo)
        }
    }
}
