//
//  PrimeNumbers.swift
//  Assignment2
//
//  Created by anel bakhtygereyeva on 26.09.2025.
//

func isPrime(_ number: Int) -> Bool {
    if number < 2 {
        return false
    }
    for i in 2..<number {
        if number % i == 0 {
            return false
        }
    }
    return true
}

func runPrimeNumbers() {
    for n in 1...100 {
        if isPrime(n) {
            print(n)
        }
    }
}
