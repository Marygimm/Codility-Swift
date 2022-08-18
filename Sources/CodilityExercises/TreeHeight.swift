//
//  TreeHeight.swift
//  
//
//  Created by Mary Moreira on 17/08/2022.
//

import Foundation
public class Tree {
      public var x : Int = 0
      public var l : Tree?
      public var r : Tree?
      public init() {}
  }

struct ThreeHeight {
    static func solution(_ T : Tree?) -> Int {
        guard let tree = T else {
                   return -1
               }
               return height(branch: tree, h: -1)
    }
    
    
    static func height(branch: Tree?, h: Int) -> Int {
        guard let branch = branch else {
            return h
        }
        return max(height(branch: branch.l, h: h + 1), height(branch: branch.r, h: h + 1))
    }
}
