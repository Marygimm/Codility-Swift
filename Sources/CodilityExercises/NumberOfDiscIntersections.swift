//
//  NumberOfDiscIntersections.swift
//  
//
//  Created by Mary Moreira on 09/08/2022.
//

import Foundation

struct NumberOfDiscIntersections {
    static func solution(_ A : inout [Int]) -> Int {
        
        var listOfFinalXValues = [Int:[Int]]()
        var count = 0
        
        for (x, radius) in A.enumerated() {
            listOfFinalXValues[x] = calculateAllXPositionsOfCircle(position: x, radius: radius)
        }
        
        listOfFinalXValues.forEach { _, values in
            listOfFinalXValues.forEach { _, values2 in
                if values.intersects(with: values2), values != values2 {
                    count += 1
                }
            }
        }
        
        
        return count/2

    }
    
    
    static func calculateAllXPositionsOfCircle(position x: Int, radius: Int) -> [Int] {
        let value = radius + x
        let second = x - radius
        
        let positive = Array(second...value)

        
        return positive
    }

}

extension Sequence where Iterator.Element : Hashable {

    func intersects<S : Sequence>(with sequence: S) -> Bool
        where S.Iterator.Element == Iterator.Element
    {
        let sequenceSet = Set(sequence)
        return self.contains(where: sequenceSet.contains)
    }
}
