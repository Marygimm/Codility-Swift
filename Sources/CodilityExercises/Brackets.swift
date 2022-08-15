//
//  Brackets.swift
//  
//
//  Created by Mary Moreira on 10/08/2022.
//

import Foundation

//FAIL
struct Brackets {
    static func solution(_ S : inout String) -> Int {
            var stack = [Character]()
            var lastCharacter: Character
            
            for element in Array(S) {
                if element == "{" || element == "[" || element == "(" {
                    stack.append(element)
                } else {
                    if stack.isEmpty { return 0 }
                    lastCharacter = stack.popLast()!
                    
                    if element == "}" && lastCharacter != "{" ||
                    element == "]" && lastCharacter != "[" ||
                    element == ")" && lastCharacter != "(" {
                        return 0
                    }
                }
            }
            guard stack.isEmpty else {
                return 0
            }
            return 1
            
        }

}
