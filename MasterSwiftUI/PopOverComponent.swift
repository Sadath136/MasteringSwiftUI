//
//  PopOverComponent.swift
//  MasterSwiftUI
//
//  Created by Sadath S on 11/12/25.
//

import SwiftUI

struct PopOverComponent: View {
    @State private var isPopOverShown: Bool = false
    
    var body: some View {
        ZStack {
            Color.gray.opacity(0.3).ignoresSafeArea()
            Button {
                isPopOverShown.toggle()
            } label: {
                Text("Click Me to Provide Feedback?")
                    .foregroundStyle(Color.orange)
                    .padding()
            }
            .popover(isPresented: $isPopOverShown, arrowEdge: .top) {
                PopOverview()
                    .presentationCompactAdaptation(.popover)
            }
        }
    }
}

struct PopOverview: View {
    
    var popOverRatings: [String] = [
        "Very Good 😄",
        "Very Poor 👹",
        "Average 🤓"
    ]
    
    var body: some View {
        ScrollView {
            VStack {
                ForEach(popOverRatings, id: \.self) { rating in
                    Button {
                        print("Selected rating: - \(rating)")
                    } label: {
                        Text(rating)
                    }
                    Divider()
                }
            }
            .padding(20)
        }
    }
}

#Preview {
    PopOverComponent()
}
