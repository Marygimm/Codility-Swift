//
//  ChocolatesByNumbers.swift
//  
//
//  Created by Mary Moreira on 11/08/2022.
//

import Foundation

struct ChocolatesByNumbers {
    //the least common multiple/number of chocolates will give us the number of iteractions
    // the number of eaten chocolate is calculated by the least common multiple / for step lenght
    // least common multiple  = a*b/greatest common divisior (is the last divisor getted when remainder is 0) 21 and 9 = GCD (3)
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
