//
//  Dominator.swift
//  
//
//  Created by Mary Moreira on 10/08/2022.
//

import Foundation

//100% - So if The dominator of array A is the value that occurs in more than half of the elements of A. <-- So thats why we need to calculate how many times each element is repetead so we can evaluate this condition and return all the indexes from the respective value
struct Dominator {
    static func solution(_ A : inout [Int]) -> Int {
        
        let halfOfTheArray = A.count / 2
        let mappedItems = A.map { ($0, 1) }
        let counts = Dictionary(mappedItems, uniquingKeysWith: +)
        
        let onlyDuplicatesHigher = counts.filter { $0.value > halfOfTheArray }.map { $0 }
        
        guard let value = onlyDuplicatesHigher.first?.key else { return -1}

        return A.allIndices(of: value).randomElement() ?? -1
    }
    
    static func solution2(_ A : inout [Int]) -> Int {
        let halfOfTheArray = A.count / 2
        guard !A.isEmpty else { return -1 }
        if A.count == 1 {
            return 0
        }
        
        let sortedArray = A.sorted { $0 < $1 }
        var counter = 1
        for i in (1..<A.count) {
            if sortedArray[i] != sortedArray[i-1] {
                counter = 1
            } else {
                counter += 1
            }
            
            if counter > halfOfTheArray {
                return A.allIndices(of: sortedArray[i]).randomElement() ?? -1
            }
        }
        
        return -1
    
    }
}


extension Array where Element: Equatable {
  func allIndices(of value: Element) -> [Index] {
    indices.filter { self[$0] == value }
  }
}
