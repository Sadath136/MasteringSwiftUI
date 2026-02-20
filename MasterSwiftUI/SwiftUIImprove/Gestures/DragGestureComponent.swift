//
//  DragGesture.swift
//  MasterSwiftUI
//
//  Created by Sadath S on 18/02/26.
//

import SwiftUI

struct DragGestureComponent: View {
    @State private var dragGesture: CGSize = .zero
    
    var body: some View {
        RoundedRectangle(cornerRadius: 25.0)
            .frame(width: 200.0, height: 200.0)
            .offset(dragGesture)
            .gesture(
                DragGesture(minimumDistance: 10.0, coordinateSpace: .global)
                    .onChanged({ value in
                        withAnimation(.linear) {
                            dragGesture = .init(width: value.translation.width, height: value.translation.height)
                        }
                    })
            )
    }
}

#Preview {
    DragGestureComponent()
}
