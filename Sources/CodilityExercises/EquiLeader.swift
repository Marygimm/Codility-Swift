//
//  EquiLeader.swift
//  
//
//  Created by Mary Moreira on 10/08/2022.
//

import Foundation

struct EquiLeader {
    
    static func solution(_ A : inout [Int]) -> Int {
        
        var leader = 0
        var leaderCount = 0
        for number in A {
            if leaderCount == 0 {
                leader = number
            }
            if leader == number {
                leaderCount += 1
            } else {
                leaderCount -= 1
            }
        }
        
        leaderCount = 0
        for number in A {
            if number == leader {
                leaderCount += 1
            }
        }
        var equiLeaders = 0
        var leftLeadersCount = 0
        var rightLeadersCount = leaderCount
        for index in 0..<A.count {
            if A[index] == leader {
                leftLeadersCount += 1
                rightLeadersCount -= 1
            }
            if leftLeadersCount > (index + 1) / 2
                && rightLeadersCount > (A.count - index - 1) / 2 {
                equiLeaders += 1
            }
        }
        return equiLeaders
    
}
}



