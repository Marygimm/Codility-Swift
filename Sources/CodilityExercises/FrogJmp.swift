//
//  File.swift
//  
//
//  Created by Mary Moreira on 07/08/2022.
//

import Foundation

struct FrogJmp {
    
    static func solution(_ X : Int, _ Y : Int, _ D : Int) -> Int {
        guard X < Y else { return 0 }
        
        var jumpingPosition = X
        var jumps = 0
        
        while jumpingPosition < Y {
            jumpingPosition += D
            jumps += 1
        }
        return jumps
    }
}
