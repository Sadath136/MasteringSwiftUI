//
//  ForEachComponent.swift
//  MasterSwiftUI
//
//  Created by Sadath S on 10/10/25.
//

import SwiftUI

struct ForEachComponent: View {
    var dataCollection: [String] = ["One","Two","Five","Seven","Nine"]
    
    var body: some View {
        ScrollView {
            ForEach(1..<11) { parentIndex in
                VStack() {
                    ForEach(1..<11) { childIndex in
                        HStack {
                            Text("\(parentIndex) * \(childIndex) = \(parentIndex * childIndex)")
                        }
                        .padding(.bottom, childIndex == 10 ? 10 : 0)
                    }
                }
                .frame(maxWidth: .infinity)
            }
        }
    }
}

#Preview {
    ForEachComponent()
}
