//
//  File.swift
//  
//
//  Created by Mary Moreira on 07/08/2022.
//

import Foundation

struct FrogJmp {
    //100% correct answer but is a brute solution
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
    
    //perfomance based solution
    static func solution2(_ X : Int, _ Y : Int, _ D : Int) -> Int {
        guard X < Y else { return 0 }
        
        let dif = Y - X
        var jumps = dif / D
        
        if (jumps*D+X < Y) {
            jumps += 1
        }
        return jumps
    }
}
