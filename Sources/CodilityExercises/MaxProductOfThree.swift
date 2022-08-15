//
// MaxProductOfThree.swift
//  
//
//  Created by Mary Moreira on 09/08/2022.
//

import Foundation

struct MaxProductOfThree {
    static func solution(_ A : inout [Int]) -> Int {
        
        A = A.sorted { $0 < $1 }
        
        // if we order the array, we could multiply the 3 biggest numbers of the array on product 2 , but for edge cases as negative numbers we were failing, so in this case we verify the 2 bigger negative numbers and multiply also with the max element of the array
        // in array [-3,-2,1,2,5,6] the max is 2*5*6 because -3*-2*6 gives 36 and not 60. But for [-5,-6,1,2,5,6] product1 = -5*-6*6 = 180
        let product1 = A[A.count-1] * A[0] * A[1]
        let product2 = A[A.count-1] * A[A.count-2] * A[A.count-3]
      
        return max(product1, product2)
    }
    
}
