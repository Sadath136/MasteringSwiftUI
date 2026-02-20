//
//  ListComponent.swift
//  MasterSwiftUI
//
//  Created by Sadath S on 26/12/25.
//

import SwiftUI

struct ListComponent: View {
    var body: some View {
        List {
            Section {
                ForEach(1..<100) {
                    Text("Row \($0)")
                        .swipeActions(edge: .trailing, allowsFullSwipe: true, content: {
                            Button("Edit") {
                                print("Edited")
                            }
                            Button("Add") {
                                print("Edited")
                            }
                        })
                }
            } header: {
                Text("Items")
                .frame(maxWidth: .infinity,alignment: .center)
            } footer: {
                Text("Footer")
            }
        }
        .listRowInsets(.init(top: 0.0, leading: 0.0, bottom: 0.0, trailing: 0.0))
        .listRowSeparator(.visible)
        .listStyle(.plain)
    }
}

#Preview {
    ListComponent()
}
