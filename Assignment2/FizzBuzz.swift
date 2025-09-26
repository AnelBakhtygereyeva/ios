//
//  FizzBuzz.swift
//  Assignment2
//
//  Created by anel bakhtygereyeva on 26.09.2025.
//
import Cocoa
func runFizzBuzz() {
    for i in 1...100 {
        if i % 3 == 0 && i % 5 == 0 {
            print("FizzBuzz")
        } else if i % 3 == 0 {
            print("Fizz")
        } else if i % 5 == 0 {
            print("Buzz")
        }
    }
}

