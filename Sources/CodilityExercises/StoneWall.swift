//
//  StoneWall.swift
//  
//
//  Created by Mary Moreira on 10/08/2022.
//

import Foundation

struct StoneWall {
    static func solution(_ H : inout [Int]) -> Int {
        var arrayOfDifElements = [Int]()
        var countNumberOfBlocks = 0
        H.forEach { element in
            while !arrayOfDifElements.isEmpty, let lastElement = arrayOfDifElements.last, element > lastElement {
                arrayOfDifElements.popLast()
            }
            
            if !arrayOfDifElements.contains(element) {
                countNumberOfBlocks += 1
                arrayOfDifElements.append(element)
            }
        }
        return countNumberOfBlocks
    }
}
