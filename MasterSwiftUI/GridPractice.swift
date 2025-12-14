//
//  GridPractice.swift
//  MasterSwiftUI
//
//  Created by Sadath S on 26/10/25.
//

import SwiftUI

struct GridPractice: View {
    @State var dataItems: [DataItems]
    @State var lineSpacingAndInterItemSpacing = 15.0
    @State var gridItems: [GridItem] = [
        GridItem(.flexible(), spacing: 20),
        GridItem(.flexible(), spacing: 20)
    ]
    
    var body: some View {
        ZStack {
            Color(.systemBackground).ignoresSafeArea()
            ScrollView {
                LazyVGrid(columns: gridItems, spacing: lineSpacingAndInterItemSpacing) {
                    ForEach(0..<dataItems.count) { index in
                        VStack(spacing: 10.0){
                            ForEach(0..<dataItems[index].nestedItems.count) { nestedIndex in
                                Text("\(dataItems[index].nestedItems[nestedIndex].name)")
                                    .frame(maxWidth: .infinity,maxHeight: .infinity)
                                    .background {
                                        RoundedRectangle(cornerRadius: 15.0)
                                            .fill(Color.gray.opacity(0.5))
                                            .shadow(color: .black.opacity(0.3),radius: 10.0)
                                    }
                            }
                        }
                        .frame(height : 120.0)
                    }
                }
                .padding()
            }
        }
    }
}


struct DataItems: Identifiable {
    let id = UUID()
    var nestedItems: [nestedDataItems] = []
}

struct nestedDataItems {
    var name:String
    var nestedItems: [nestedDataItems]
}

#Preview {
    GridPractice(dataItems: [
        .init(nestedItems: [.init(name: "Food", nestedItems: [])]),
        .init(nestedItems: [.init(name: "dineout", nestedItems: []),.init(name: "Gifatables", nestedItems: [])]),
        .init(nestedItems: [.init(name: "Instamart", nestedItems: [])]),
        .init(nestedItems: [.init(name: "Snacc", nestedItems: [])]),
    ])
}
