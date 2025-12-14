//
//  InitAndEnumCompnent.swift
//  MasterSwiftUI
//
//  Created by Sadath S on 10/10/25.
//

import SwiftUI

struct InitAndEnumCompnent: View {
    
    let backgroundColor: Color
    let textCounter: String
    
    init(fruitType: FruitType, textCounter: String) {
        self.backgroundColor = fruitType.backgroundColor
        self.textCounter = textCounter
    }
    
    enum FruitType {
        case apple
        case orange
        
        var backgroundColor: Color {
            switch self {
            case .apple:
                return .red
            case .orange:
                return .orange
            }
        }
    }
    
    
    var body: some View {
        VStack() {
            Text(textCounter)
                .underline()
                .padding(.bottom,3.0)
            Text("Apple")
                .font(.headline)
        }
        .frame(width: 150.0, height: 150.0)
        .background {
            backgroundColor
                .cornerRadius(20)
        }
        .shadow(color: backgroundColor, radius: 10.0, x: 0.0, y: 0.0)
    }
}

#Preview {
    HStack {
        InitAndEnumCompnent(fruitType: .apple, textCounter: "100")
        InitAndEnumCompnent(fruitType: .orange, textCounter: "100")
    }
}
