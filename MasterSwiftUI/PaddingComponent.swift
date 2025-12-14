//
//  PaddingComponent.swift
//  MasterSwiftUI
//
//  Created by Sadath S on 09/10/25.
//

import SwiftUI

struct PaddingComponent: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text("Hello World")
                .font(Font.largeTitle)
                .padding(.bottom)
            Text("Hi my name is Sadath And I want to become an iOS Developer like a pro so please guide me howfjkdf knfk dfk df k ")
        }
        .padding()
        .background(content: {
            RoundedRectangle(cornerRadius: 20.0)
                .fill(Color.white)
                .shadow(color: Color.gray.opacity(0.6), radius: 10.0, x: 0.0, y: 0.0)
        })
        .padding()
    }
}

#Preview {
    PaddingComponent()
}
