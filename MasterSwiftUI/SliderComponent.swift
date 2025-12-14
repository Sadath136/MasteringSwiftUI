//
//  SliderComponent.swift
//  MasterSwiftUI
//
//  Created by Sadath S on 21/11/25.
//

import SwiftUI
import Foundation

struct SliderComponent: View {
    @State var sliderValue: Double = 0.0
    var body: some View {
        ZStack {
            Color.yellow.opacity(0.3).ignoresSafeArea()
            Circle()
                .fill(Color.cyan.opacity(0.3))
                .frame(width: sliderValue, height: sliderValue)
                .animation(Animation.interactiveSpring(duration: 0.4, extraBounce: 0.5, blendDuration: 0.8), value: sliderValue)
            VStack {
                Text("Slider Value: - \(Int($sliderValue.wrappedValue))")
                Slider(value: $sliderValue, in: 0...200, step: 5.0) {
                    Text("Animate value of Reactangle")
                } minimumValueLabel: {
                    Text("0")
                } maximumValueLabel: {
                    Text("100")
                }
            }
        }
    }
}

#Preview {
    SliderComponent()
}
