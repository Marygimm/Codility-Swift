//
// CountDiv.swift
//  
//
//  Created by Mary Moreira on 08/08/2022.
//

import Foundation

struct CountDiv {
    //solution with 100% correctness but 50% of total score
    static func solution(_ A : Int, _ B : Int, _ K : Int) -> Int {
        guard K > 0, A <= B else{ return 0 }
        
        let range = Array(A...B)
        var countElements = 0
        
        range.forEach {
            if $0 % K == 0 {
                countElements += 1
            }
        }
        
        return countElements
    }
    
    //solution with 100%
    static func solution2(_ A : Int, _ B : Int, _ K : Int) -> Int {
        
        //computing time always constant
        /**
         how many times do we need to add K to A in order to get/exceed B (numberOfTimes x K) >= B
         the number of divisibles between two edges is the diff between them
         */
        var divisibleNumbers = (B/K) - (A/K)
        
        if A%K == 0 {
            divisibleNumbers += 1
        }

        return divisibleNumbers
    }

}
