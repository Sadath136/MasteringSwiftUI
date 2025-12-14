//
//  TextComponent.swift
//  MasterSwiftUI
//
//  Created by Sadath S on 07/10/25.
//

import SwiftUI

struct TextComponent: View {
    var body: some View {
        Text("Hello, World! I am learning swift UI I need multiline text so that I can test all my things")
            .font(.headline)
           // .font(Font.system(.largeTitle, design: .serif, weight: .bold))
            .foregroundStyle(Color.red)
//            .underline(true, color: Color.blue)
//            .strikethrough(true, color: .green)
//            .italic()
//            .kerning(2.0)
            .multilineTextAlignment(.center)
            .lineSpacing(10.0)
            .frame(width: 200.0, height: 100.0, alignment: .center)
            //.minimumScaleFactor(0.7)
            .background {
                RoundedRectangle(cornerRadius: 20.0)
            }
        }
}

#Preview {
    TextComponent()
}
