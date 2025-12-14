//
//  ActionSheetComponent.swift
//  MasterSwiftUI
//
//  Created by Sadath S on 11/11/25.
//

import SwiftUI

struct ActionSheetComponent: View {
    
    @State var isPresented: Bool = false
    
    var body: some View {
        ZStack {
            ScrollView {
                ForEach(0..<10) { index  in
                    FeedView(isPresented: $isPresented)
                    Spacer()
                        .frame(height: 20.0)
                }
            }
            .actionSheet(isPresented: $isPresented) {
                ActionSheet(title: Text(""), message: Text(""), buttons: [
                    .default(Text("Default")) {
                        
                    },
                    .destructive(Text("Confirm")),
                    .cancel()
                ])
            }
        }
    }
}

#Preview {
    ActionSheetComponent()
}
