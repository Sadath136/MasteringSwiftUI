//
//  FrameComponent.swift
//  MasterSwiftUI
//
//  Created by Sadath S on 08/10/25.
//

import SwiftUI

struct FrameComponent: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            .background(Color.blue)
            .frame(width: 200, height: 200, alignment: .center)
            .background(Color.red)
            .frame(maxWidth: .infinity, alignment: .leading)
            .background(Color.yellow)
            .frame(maxHeight: .infinity,alignment: .center)
            .background(Color.mint)
    }
}

#Preview {
    FrameComponent()
}
