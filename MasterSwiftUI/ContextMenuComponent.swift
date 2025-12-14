//
//  ContextMenuComponent.swift
//  MasterSwiftUI
//
//  Created by Sadath S on 11/11/25.
//

import SwiftUI

struct ContextMenuComponent: View {
    @State var isPresented: Bool = false
    
    var body: some View {
        GeometryReader { parentFrame in
            ZStack {
                Color.yellow.ignoresSafeArea(.all)
                VStack(alignment: .leading,spacing: 15.0) {
                    Image(systemName: "heart.fill")
                    Text("Title")
                        .fontWeight(.bold)
                    Text("subtitle")
                        .fontWeight(.regular)
                    Button("Check PopOver") {
                        isPresented.toggle()
                    }
                    .popover(isPresented: $isPresented, content: {
                        if #available(iOS 16.4, *) {
                            Text("This is a tooltip")
                                .presentationCompactAdaptation(.none)
                        } else {
                            // Fallback on earlier versions
                        }
                    })
                }
                .padding()
                .background {
                    RoundedRectangle(cornerRadius: 15.0)
                        .fill(Color.white)
                }
                .contextMenu {
                    Button("One") {
                        print("One")
                    }
                    Button("Two") {
                        print("One")
                    }
                    Button("Three") {
                        print("One")
                    }
                }
            }
        }
    }
}


#Preview {
    ContextMenuComponent()
}
