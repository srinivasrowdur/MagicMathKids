//
//  CalculatorButton.swift
//  MagicMathKids
//
//  Created by Srinivas Rowdur on 8/1/22.
//

import SwiftUI

extension Calculator {
    struct CalculatorButton: View {
        
        let buttonType: ButtonType
        
        var body: some View {
            Button(buttonType.description) { }
                .buttonStyle(CalculatorButtonStyle(
                    size: 80, // <- We'll calculate in the next step
                    backgroundColor: buttonType.backgroundColor,
                    foregroundColor: buttonType.foregroundColor)
                )
        }
    }
}

struct CalculatorButton_Previews: PreviewProvider {
    static var previews: some View {
        Calculator.CalculatorButton(buttonType: .digit(.five))
    }
}
