//
//  Calculator.swift
//  MagicMathKids
//
//  Created by Srinivas Rowdur on 7/31/22.
//

import SwiftUI

struct Calculator: View {
    var body: some View {
        VStack {
            Spacer()
            Text("0")
                .padding()
                .foregroundColor(Color.white)
                .frame(maxWidth: .infinity, alignment: .trailing)
                .font(.system(size: 88, weight: .light))
                .lineLimit(1)
                .minimumScaleFactor(0.2)
        }
        .background(Color.black)
    }
}

struct Calculator_Previews: PreviewProvider {
    static var previews: some View {
        Calculator()
    }
}
