//
//  UniqueChars.swift
//  Assignment2
//
//  Created by anel bakhtygereyeva on 27.09.2025.
//

func hasUniqChar (_ text: String) -> Bool {
    var uniq: Set<Character> = []
    for char in text {
        if uniq.contains(char) {
            return false
        }
        uniq.insert(char)
    }
    return true
}

func runUniqueChars () {
    print(hasUniqChar("Hello World"))
    print(hasUniqChar("Melon"))
}
