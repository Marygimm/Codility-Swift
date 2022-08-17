//
//  AbsDistinct.swift
//  
//
//  Created by Mary Moreira on 11/08/2022.
//

import Foundation

struct AbsDistinct {
    static func solution(_ A : inout [Int]) -> Int {
        
        let positive = A.map { abs($0)}
        let setElements = Set(positive)
        return setElements.count
    }
    
}
