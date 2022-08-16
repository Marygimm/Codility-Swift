//
//  CountFactors.swift
//  
//
//  Created by Mary Moreira on 10/08/2022.
//

import Foundation

struct CountFactors {
    
/**
 20 factors
 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20
 
 1,2,4 factors * 2 = 6 (1,2,4,5,10,20)
 
Exception 16 factors, square root of 16 is 4
 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16
 so we keep wih 1,2,3,4, factors are 1,2,4 but there ar not 6 factors of 16 there are 5. So for square numbers 4*4 =16 we should subctract one number. so 3*2-1
 */
    
    // we are only considering values that X^2 <= 24
    //also the square root of 24 if 4,89 so we can stay at the first four or 5 elements of the array, check the factors and multiply by two will be the result pretended
    static func solution(_ N : Int) -> Int {
        if N == 1 { return 1 }

        var counter = 0
        
        for i in (1...N) {
            if i*i > N {
                break
            }
            if N%i == 0 {
                counter += 1
            }
        }
            
        if N == Int(sqrt(Double(N))) * Int(sqrt(Double(N))) {
                return counter * 2-1
            } else {
                return counter * 2
            }
        }
}
