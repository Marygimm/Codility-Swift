//
//
// MaxCounters.swift
//  
//
//  Created by Mary Moreira on 08/08/2022.
//

import Foundation

struct MaxCounters {
    //this first solution is 100% correct althought is only 66% score
    static func solution(_ N : Int, _ A : inout [Int]) -> [Int] {
        
        var finalArray = Array(repeating: 0, count: N)

        let sumOfN = N + 1
        
        A.forEach { element in
            if 1<=element && element<=N {
               finalArray = increaseOneValueOnPosition(position: element, values: &finalArray)
            } else if element == sumOfN {
                finalArray = increaseToMaxValueInCounters(values: finalArray)
            }
        }
        
        
        return finalArray
    }
    
    static func increaseOneValueOnPosition(position: Int, values: inout [Int]) -> [Int] {
        values[position - 1] += 1
        return values
    }
    
    static func increaseToMaxValueInCounters(values: [Int]) -> [Int] {
        guard let maxValue = values.max() else { return [] }
        var newArray = [Int]()
        
        values.forEach { _ in
            newArray.append(maxValue)
        }
        
        return newArray
        }
    
    //second solution with 100% score
    
    static func solution2(_ N : Int, _ A : inout [Int]) -> [Int] {
        var maxValue=0
        var baseValue=0
        //we should create the result array starting with all positions to zero
        var result = Array(repeating: 0, count: N)
        
        for i in (0..<A.count) {
            if A[i] <= N {
                //while the value in A is < then N we should increment counter with 1
                //result[A[i]-1] its because we have counter 1 and not counter 0 so position 3 would be on counter[2]
                result[A[i]-1] = max(baseValue, result[A[i]-1]) + 1
                //we should save the max value so in case that the A[i] > N we update baseValue from zero to that value
                maxValue = max(maxValue, result[A[i]-1])
            } else {
                baseValue = maxValue
            }
        }
        
        //for all the positions not filled in the array or filled with a number < than baseValue we change is value to baseValue
        for i in (0..<result.count) {
            if result[i] < baseValue {
                result[i] = baseValue
            }
        }
        return result
    }


}
