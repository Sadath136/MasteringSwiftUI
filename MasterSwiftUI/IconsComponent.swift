//
//  IconsComponent.swift
//  MasterSwiftUI
//
//  Created by Sadath S on 08/10/25.
//

import SwiftUI

struct IconsComponent: View {
    var body: some View {
        Image(systemName:"heart.fill")
            .resizable()
          //  .scaledToFit()
            .scaledToFill()
            .foregroundColor(Color.red)
           // .font(.largeTitle)
            .frame(width: 200, height: 200)
            .clipped()
    }
}

#Preview {
    IconsComponent()
}
