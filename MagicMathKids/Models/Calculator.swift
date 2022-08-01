//
//  Calculator.swift
//  MagicMathKids
//
//  Created by Srinivas Rowdur on 8/1/22.
//

import Foundation

struct Calculator {
    
    private struct ArithmeticExpression: Equatable {
           var number: Decimal
           var operation: ArithmeticOperation

           func evaluate(with secondNumber: Decimal) -> Decimal {
               switch operation {
               case .addition:
                   return number + secondNumber
               case .subtraction:
                   return number - secondNumber
               case .multiplication:
                   return number * secondNumber
               case .division:
                   return number / secondNumber
               }
           }
       }
    
    private var newNumber: Decimal?
    private var expression: ArithmeticExpression?
    private var result: Decimal?
    
    // MARK: - COMPUTED PROPERTIES
    var displayText: String {
        return getNumberString(forNumber: number, withCommas: true)
    }
    
    /// Current displaying number
       private var number: Decimal? {
           newNumber ?? expression?.number ?? result
       }
    
    // MARK: - OPERATIONS
    
    mutating func setDigit(_ digit: Digit) {
        
        // 1.
        guard canAddDigit(digit) else { return }
        // 2.
        let numberString = getNumberString(forNumber: newNumber)
        // 3.
        newNumber = Decimal(string: numberString.appending("\(digit.rawValue)"))

    }
    
    mutating func setOperation(_ operation: ArithmeticOperation) {
        
        // 1.
        guard var number = newNumber ?? result else { return }
        // 2.
        if let existingExpression = expression {
            number = existingExpression.evaluate(with: number)
            }
        // 3.
        expression = ArithmeticExpression(number: number, operation: operation)
        // 4.
        newNumber = nil
        
    }
    
    mutating func toggleSign() {
        
    }
    
    mutating func setPercent() {
        
    }
    
    mutating func setDecimal() {
        
    }
    
    mutating func evaluate() {
        
    }
    
    mutating func allClear() {
        
    }
    
    mutating func clear() {
        
    }
    
    // MARK: - HELPERS
        private func getNumberString(forNumber number: Decimal?, withCommas: Bool = false) -> String {
            return (withCommas ? number?.formatted(.number) : number.map(String.init)) ?? "0"
        }

        private func canAddDigit(_ digit: Digit) -> Bool {
            return number != nil || digit != .zero
        }
    
    func operationIsHighlighted(_ operation: ArithmeticOperation) -> Bool {
            return expression?.operation == operation && newNumber == nil
        }
}

