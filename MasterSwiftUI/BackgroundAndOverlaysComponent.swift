//
//  BackgroundAndOverlaysComponent.swift
//  MasterSwiftUI
//
//  Created by Sadath S on 09/10/25.
//

import SwiftUI

struct BackgroundAndOverlaysComponent: View {
    var body: some View {
        Image(systemName: "heart.fill")
            .resizable()
            .scaledToFit()
            .frame(width: 30,height: 30)
            .background {
                Circle()
                    .fill(Color.blue)
                    .frame(width: 70,height: 70)
                    .overlay(alignment: .bottomTrailing, content: {
                        Text("1")
                            .offset(x: -3, y: -3)
                            .font(.caption)
                            .background {
                                Circle()
                                    .fill(Color.purple)
                                    .frame(width: 25,height:25)
                                    .offset(x: -3, y: -3)
                            }
                    }
                    )
                
            }
            .shadow(color: Color.blue, radius: 10, x: 0.0, y: 0.0)
    }
}

#Preview {
    BackgroundAndOverlaysComponent()
}
