//
//  ButtonType.swift
//  MagicMathKids
//
//  Created by Srinivas Rowdur on 7/31/22.
//

import Foundation

enum ButtonType: Hashable, CustomStringConvertible {
    case digit(_ digit: Digit)
    case operation(_ operation: ArithmeticOperation)
    case negative
    case percent
    case decimal
    case equals
    case allClear
    case clear
    
    var description: String {
            switch self {
            case .digit(let digit):
                return digit.description
            case .operation(let operation):
                return operation.description
            case .negative:
                return "±"
            case .percent:
                return "%"
            case .decimal:
                return "."
            case .equals:
                return "="
            case .allClear:
                return "AC"
            case .clear:
                return "C"
            }
        }
}
