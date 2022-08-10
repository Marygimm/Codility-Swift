//
//  Dominator.swift
//  
//
//  Created by Mary Moreira on 10/08/2022.
//

import Foundation

struct Dominator {
    static func solution(_ A : inout [Int]) -> Int {
        
        let halfOfTheArray = A.count / 2
        let mappedItems = A.map { ($0, 1) }
        let counts = Dictionary(mappedItems, uniquingKeysWith: +)
        
        let onlyDuplicatesHigher = counts.filter { $0.value > halfOfTheArray }.map { $0 }
        
        guard let index = onlyDuplicatesHigher.first?.key else { return 0}

        return A.allIndices(of: index).randomElement() ?? 0
    }
}


extension Array where Element: Equatable {
  func allIndices(of value: Element) -> [Index] {
    indices.filter { self[$0] == value }
  }
}
