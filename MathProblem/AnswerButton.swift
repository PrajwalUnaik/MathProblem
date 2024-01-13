//
//  AnswerButton.swift
//  MathProblem
//
//  Created by Prajwal U on 13/01/24.
//

import SwiftUI

struct AnswerButton: View {
    
    var number : Int
    
    var body: some View {
        
        Text("\(number)")
            .frame(width: 110,height: 110)
            .font(.system(size: 30,weight: .bold))
            .clipShape(Circle())
            .shadow(radius: 5)
    }
}

#Preview {
    AnswerButton(number: 100)
}
