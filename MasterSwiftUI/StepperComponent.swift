//
//  StepperComponent.swift
//  MasterSwiftUI
//
//  Created by Sadath S on 21/11/25.
//

import SwiftUI

struct StepperComponent: View {
    @State var stepCounter: CGFloat = 0.0
    var body: some View {
        ZStack {
            Color.black.opacity(0.2).ignoresSafeArea()
            VStack {
                RoundedRectangle(cornerRadius: stepCounter/2.0)
                    .frame(width: stepCounter,height: stepCounter)
                    .animation(Animation.spring(duration: 0.5), value: stepCounter)
               
                Stepper(value: $stepCounter, step: 50) {
                    Text("Stepper \(stepCounter)")
                }
            }
        }
    }
}

#Preview {
    StepperComponent()
}
