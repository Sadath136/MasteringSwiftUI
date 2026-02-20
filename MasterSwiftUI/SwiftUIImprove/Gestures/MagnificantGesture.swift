//
//  MagnificantGesture.swift
//  MasterSwiftUI
//
//  Created by Sadath S on 28/12/25.
//

import SwiftUI

struct MagnificantGesture: View {
    @State var scaleFactor: CGFloat = 1
    var body: some View {
        VStack {
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                .padding(30)
                .background {
                    Color.blue
                    .clipShape(RoundedRectangle(cornerRadius: 10))
                }
        }
        .scaleEffect(scaleFactor)
        .gesture(
            MagnifyGesture(minimumScaleDelta: 0)
                .onChanged { value in
                    
                        scaleFactor = value.magnification
                }
                .onEnded { value in
                    withAnimation(Animation.linear(duration: 0.5), {
                        scaleFactor =  1
                    })
                }
        )
    }
}

#Preview {
    MagnificantGesture()
}
