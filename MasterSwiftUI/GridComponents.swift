//
//  GridComponents.swift
//  MasterSwiftUI
//
//  Created by Sadath S on 14/10/25.
//

import SwiftUI

struct GridComponents: View {
    
    @State var gridItems: [GridItem] = [
        GridItem(.flexible())
    ]
    
    @State var isOneColumn: Bool = true
    
    var body: some View {
        ScrollView {
            ZStack {
                LazyVGrid(columns: gridItems, alignment: .center, spacing: 10.0, pinnedViews: [
                    .sectionHeaders
                ]) {
                    Section {
                        ForEach(0..<10) { index in
                            RoundedRectangle(cornerRadius: 20.0)
                                .fill(Color.white)
                                .frame(height: (UIScreen.main.bounds.width / (isOneColumn ? 1.0 : 2.0)) - (isOneColumn ? 0.0 : 20.0))
                                .shadow(radius: 10.0)
                        }
                        RoundedRectangle(cornerRadius: 20.0)
                            .stroke(
                                LinearGradient(colors: [.red,.blue], startPoint: .topLeading, endPoint: .bottomTrailing), style: StrokeStyle(lineWidth: 2.0)
                                )                          
                    } header: {
                        Text("First Section")
                            .font(.headline)
                            .fontWeight(.bold)
                            .onTapGesture {
                                isOneColumn = !isOneColumn
                                withAnimation(.bouncy, {
                                    if isOneColumn {
                                        gridItems = [GridItem(.flexible())]
                                    }else {
                                        gridItems = [
                                            GridItem(.flexible(),spacing: 20.0),
                                            GridItem(.flexible(),spacing: 0.0),
                                        ]
                                    }
                                })
                        }
                    }
                }
            }
            .padding(.horizontal)
        }
    }
}

#Preview {
    GridComponents()
}
