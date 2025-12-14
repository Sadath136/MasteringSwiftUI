//
//  SpacerComponent.swift
//  MasterSwiftUI
//
//  Created by Sadath S on 10/10/25.
//

import SwiftUI

struct SpacerComponent: View {
    var body: some View {
        VStack(spacing: 0.0) {
            HStack(alignment: .bottom) {
                Image(systemName: "heart.fill")
                Spacer(minLength: 0.0)
                    .frame(height: 5)
                    .background(Color.gray)
                Image(systemName: "heart")
            }
            .padding(.horizontal)
             Spacer(minLength: 0)
                .frame(width: 5)
                .background(Color.gray)
        }
    }
}

#Preview {
    SpacerComponent()
}
