//
//  RotationGestureComponent.swift
//  MasterSwiftUI
//
//  Created by Sadath S on 29/12/25.
//

import SwiftUI

struct RotationGestureComponent: View {
    @State private var rotationAngle: Angle = .degrees(0)
    
    var body: some View {
        VStack {
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                .padding(30)
                .background {
                    Color.blue
                    .clipShape(RoundedRectangle(cornerRadius: 10))
                }
        }
        .rotationEffect(rotationAngle)
        .gesture(
            RotateGesture(minimumAngleDelta: rotationAngle)
                .onChanged({ value in
                    rotationAngle = value.rotation
                })
                .onEnded({ value in
                    withAnimation(Animation.linear(duration: 0.5)) {
                        rotationAngle = .degrees(0)
                    }
                })
        )
    }
}

#Preview {
    RotationGestureComponent()
}
