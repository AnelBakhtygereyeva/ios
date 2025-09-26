//
//  SimpleCalculator.swift
//  Assignment2
//
//  Created by anel bakhtygereyeva on 27.09.2025.
//

func add(_ a: Double, _ b: Double) -> Double { a + b }
func subtract(_ a: Double, _ b: Double) -> Double { a - b }
func multiply(_ a: Double, _ b: Double) -> Double { a * b }
func divide(_ a: Double, _ b: Double) -> Double? { b != 0 ? a / b : nil }

func runSimpleCalculator() {
    var calculating = true
    while calculating {
        print("Enter first number:")
        guard let a = Double(readLine() ?? "") else { continue }
        print("Choose operation (+, -, *, /): ")
        guard let op = readLine() else { continue }
        print("Enter second number:")
        guard let b = Double(readLine() ?? "") else { continue }
        
        
        var result: Double? = nil
        switch op {
                case "+": result = add(a, b)
                case "-": result = subtract(a, b)
                case "*": result = multiply(a, b)
                case "/": result = divide(a, b)
                default: print("Invalid operator")
        }
        
        if let r = result {
                    print("Result: \(r)")
                } else {
                    print("Calculating error(might be divided by 0)")
                }

                print("continue (y/n)?")
                if readLine() == "n" { calculating = false }
            }
}
