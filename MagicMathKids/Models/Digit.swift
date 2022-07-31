//
//  Digit.swift
//  MagicMathKids
//
//  Created by Srinivas Rowdur on 7/31/22.
//

import Foundation

enum Digit: Int, CaseIterable, CustomStringConvertible {
    case zero, one, two, three, four, five, six, seven, eight, nine
    
    var description: String {
        "\(rawValue)"
    }
}
