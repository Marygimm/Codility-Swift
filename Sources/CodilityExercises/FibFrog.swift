//
//  FibFrog.swift
//  
//
//  Created by Mary Moreira on 13/08/2022.
//

import Foundation

struct FibFrog {
   static func fibs(_ n: Int) -> [Int] {
        var prev = 0
        var curr = 1
        
        var result: [Int] = [prev, curr]
        
        while curr < n {
            let temp = prev + curr
            result.append(temp)
            prev = curr
            curr = temp
        }
        
        return Array(result.dropFirst(1))
    }

    static func solution(_ A : inout [Int]) -> Int {
        guard A.count > 2 else { return 1 }
        
        var steps = Array(repeating: 0, count: A.count)
        let fs = fibs(A.count)
        
        for i in fs {
            if i - 1 == A.count {
                return 1
            }
            
            if i - 1 < A.count, A[i - 1] == 1 {
                steps[i - 1] = 1
            }
        }
        
        var result = Int.max
        
        for i in 0..<A.count {
            if steps[i] == 0 {
                continue
            }
            
            let minJumps = steps[i]
            
            for j in fs {
                let nextStep = i + j
                
                if nextStep == A.count {
                    result = min(result, minJumps + 1)
                    
                    break
                }
                
                if nextStep > A.count || A[nextStep] == 0 {
                    continue
                }
                
                if steps[nextStep] == 0 || steps[nextStep] > (minJumps + 1) {
                    steps[nextStep] = minJumps + 1
                }
            }
        }
        
        return result == Int.max ? -1 : result
    }
    
    //needs verification 
    static func solution2(_ A: inout [Int]) -> Int {
        var leafPositions = Set<Int>()
        for i in 0..<A.count where A[i] == 1 { leafPositions.insert(i) }
        let otherSideOfTheRiver = A.count
        leafPositions.insert(otherSideOfTheRiver)
        let fibNumbers = fibs(A.count)
        var paths = [Int: Int]()
        
        paths[-1] = 0
        
        repeat {
            for path in paths {
                let count = path.value
                let position = path.key

                for fibNumber in fibNumbers {
                    let newPosition = fibNumber + position
                    if leafPositions.contains(newPosition) {
                        let newCount = count + 1
                        if newPosition == otherSideOfTheRiver { return newCount }

                        if let existedCount = paths[newPosition] {
                            if newCount < existedCount { paths[newPosition] = newCount }
                        } else { paths[newPosition] = newCount }
                    }
                }
                paths[position] = nil
            }
        } while paths.count > 0
        
        return -1
    }
}

