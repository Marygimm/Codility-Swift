//
// CountDiv.swift
//  
//
//  Created by Mary Moreira on 08/08/2022.
//

import Foundation

struct CountDiv {
    
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


}
