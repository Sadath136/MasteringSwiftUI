//
//  ImageComponent.swift
//  MasterSwiftUI
//
//  Created by Sadath S on 08/10/25.
//

import SwiftUI

struct ImageComponent: View {
    var body: some View {
        Image("ImageAsset")
            .renderingMode(.original)
            .resizable()
            .scaledToFill()
            .frame(width: 200, height: 200.0)
            .cornerRadius(20.0)
            .clipped()
            .clipShape(RoundedRectangle(cornerRadius: 20.0))
    }
}

#Preview {
    ImageComponent()
}
