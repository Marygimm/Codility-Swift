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
    
    static func solution2(_ A : inout [Int]) -> Int {
        let sortedArray = A.sorted { $0 < $1 }
        var leader = 0
        var counter = 1
        for i in (1..<A.count) {
            if sortedArray[i] != sortedArray[i-1] {
                counter = 1
            } else {
                counter += 1
            }
            
            if counter > A.count/2 {
                leader = sortedArray[i]
                break
            }
        }
        counter = 0
        var ocorrencesOfLeader=0
        var equileader = 0
        
        for i in (0..<A.count) {
            if A[i] == leader {
                ocorrencesOfLeader += 1
            }
        }
            
            for i in (0..<A.count) {
                if A[i] == leader {
                    counter += 1
                }
                if i+1<2*counter && A.count-i-1<2*(ocorrencesOfLeader-counter) {
                    equileader += 1
                }
            }
        return equileader

    }
    
}
    
