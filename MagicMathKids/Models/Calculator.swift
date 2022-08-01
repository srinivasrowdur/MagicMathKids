//
//  Calculator.swift
//  MagicMathKids
//
//  Created by Srinivas Rowdur on 8/1/22.
//

import Foundation

struct Calculator {
    
    private var newNumber: Decimal?
    
    // MARK: - COMPUTED PROPERTIES
    var displayText: String {
        return getNumberString(forNumber: number, withCommas: true)
    }
    
    /// Current displaying number
       private var number: Decimal? {
           newNumber
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
}
