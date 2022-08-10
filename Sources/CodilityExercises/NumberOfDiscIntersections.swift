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
        
        listOfFinalXValues.forEach { key, values in
            listOfFinalXValues.forEach { _, values2 in
                if values.intersects(with: values2), !values.containsSameElements(as: values2){
                    count += 1
                    
                }
            }
        }
        
        // needs to be fixed, when the element has already find him self in another array they cannot find each other again
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

extension Array where Element: Comparable {
    func containsSameElements(as other: [Element]) -> Bool {
        return self.count == other.count && self.sorted() == other.sorted()
    }
}
