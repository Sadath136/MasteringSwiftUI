//
//  ScrollViewReader.swift
//  MasterSwiftUI
//
//  Created by Sadath S on 18/02/26.
//

import SwiftUI
import Foundation

struct ScrollViewReaderComponent: View {
    @State var scrollToIndex: Int = 10
    
    var body: some View {
        ScrollViewReader { proxy in
            Button("Scroll To") {
                scrollToIndex = Int.random(in: 0..<100)
            }
            ScrollView(.vertical) {
                ForEach(1..<100) { index in
                    Text("Item \(index)")
                        .frame(height: 200.0)
                        .frame(maxWidth: .infinity)
                        .background {
                            RoundedRectangle(cornerRadius: 25.0)
                                .fill(Color.white)
                                .shadow(color: .gray, radius: 20.0, x: 0.0, y: 0.0)
                        }
                        .padding()
                        .id(index)
                }
                .onChange(of: scrollToIndex) { oldValue, newValue in
                    withAnimation(.linear) {
                        proxy.scrollTo(scrollToIndex, anchor: .top)
                    }
                }
            }
        }
    }
}

#Preview {
    ScrollViewReaderComponent()
}
