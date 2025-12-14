//
//  ScrollViewComponent.swift
//  MasterSwiftUI
//
//  Created by Sadath S on 10/10/25.
//

import SwiftUI

struct ScrollViewComponent: View {
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            LazyVStack {
                ForEach(0..<10) { index in
                    ScrollView(.horizontal, showsIndicators: false) {
                        LazyHStack {
                            ForEach(0..<10) { _ in
                                RoundedRectangle(cornerRadius: 25.0)
                                    .fill(Color.white)
                                    .frame(width: 200.0, height: 200.0)
                                    .shadow(radius: 10.0)
                                    .padding()
                            }
                        }
                    }
                }
            }
        }
    }
}

#Preview {
    ScrollViewComponent()
}
