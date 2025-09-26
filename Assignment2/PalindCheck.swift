//
//  PalindCheck.swift
//  Assignment2
//
//  Created by anel bakhtygereyeva on 27.09.2025.
//

func isPalindrome(_ text: String) -> Bool {
    let cleaned = text
        .lowercased()
        .filter { $0.isLetter || $0.isNumber }
    return cleaned == String(cleaned.reversed())
}

func runPalindCheck() {
    let test1 = "No lemon, no melon"
    let test2 = "Hello, World!"
    let test3 = "Racecar"

    print("\"\(test1)\" : \(isPalindrome(test1))")
    print("\"\(test2)\" : \(isPalindrome(test2))")
    print("\"\(test3)\" : \(isPalindrome(test3))")
}
