//
//  LongPressGestureComponent.swift
//  MasterSwiftUI
//
//  Created by Sadath S on 28/12/25.
//

import SwiftUI

struct LongPressGestureComponent: View {
    @State private var longPressGesture:Bool = false
    
    var body: some View {
        ZStack {
            Color.black.opacity(0.8).ignoresSafeArea()
            VStack {
                HStack {
                    RoundedRectangle(cornerRadius: 0)
                        .fill(Color.white)
                        .frame(width: longPressGesture ? .infinity : 0.0 , height: 45)
                    Spacer(minLength: 0)
                }
                .background {
                    RoundedRectangle(cornerRadius: 0)
                        .fill(Color.red)
                        .frame(height: 45)
                        .frame(maxWidth: .infinity)
                }
                Text("Click To Start")
                .gesture(
                    LongPressGesture(minimumDuration: 1.0, maximumDistance: 1.0)
                        .onEnded({ longPress in
                            withAnimation(.linear) {
                                longPressGesture = true
                            }
                        })
                )
            }
        }
    }
}

#Preview {
    LongPressGestureComponent()
}
