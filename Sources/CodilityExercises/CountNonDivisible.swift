//
//  CountNonDivisible.swift
//  
//
//  Created by Mary Moreira on 12/08/2022.
//

import Foundation

struct CountNonDivisible {
    
    static func solution(_ A : inout [Int]) -> [Int] {
        let n = A.count

        var counters = Array(repeating: 0, count: 2 * n + 1)
        
        var divisors = Array(repeating: 0, count: 2 * n + 2)

        var nonDivisors = Array(repeating: 0, count: n)

        for i in A {
            counters[i] += 1
        }

        for i in 1...2 * n {
            if counters[i] > 0 {
                var k = i

                while k <= 2 * n {
                    if counters[k] > 0 {
                        divisors[k] += counters[i]
                    }

                    k += i
                }
            }
        }

        for i in 0..<n {
            nonDivisors[i] = n - divisors[A[i]]
        }

        return nonDivisors
    }
    
    //    solution is correct, but only got 55% of task, because it got timeout error
    static func solution2(_ A : inout [Int]) -> [Int] {
        
        guard !A.isEmpty else { return [] }
                
        var dictionaryOfElements = [Int: Int]()
        var array = [Int]()
        
        var countDivisorForElement = 0
        while dictionaryOfElements.count != A.count {
            for element1 in (0..<A.count) {
                for element in A {
                    if A[element1] % element != 0, A[element1] != element  {
                        countDivisorForElement += 1
                        dictionaryOfElements[element1] = countDivisorForElement
                    } else if dictionaryOfElements[element1] == nil {
                        dictionaryOfElements[element1] = 0
                    }
                }
                countDivisorForElement = 0
            }
            dictionaryOfElements.sorted {$0.key < $1.key}.forEach { _, value in
                array.append(value)
            }
            
        }
        
        return array
        
    }
}
