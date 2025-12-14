//
//  ColorPickerComponent.swift
//  MasterSwiftUI
//
//  Created by Sadath S on 13/11/25.
//

import SwiftUI

struct ColorPickerComponent: View {
    
    @State var pickColor: Color = .red
    
    var body: some View {
        ZStack {
            pickColor.ignoresSafeArea()
            HStack {
                ColorPicker(
                    "pick color", selection: $pickColor, supportsOpacity: true)
                .padding()
                .foregroundStyle(Color.white)
                .font(Font.headline.bold())
            }
        }
    }
}

#Preview {
    ColorPickerComponent()
}
