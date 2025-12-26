//
//  PropertyWrappersComponents.swift
//  MasterSwiftUI
//
//  Created by Sadath S on 23/12/25.
//

import SwiftUI

struct PropertyWrappersComponents: View {
    @State private var text: String = ""
    @State private var isPresented: Bool = false
    
    var body: some View {
        Text("\(text)")
        Button("Click To Open Sheet") {
            isPresented.toggle()
        }
        .sheet(isPresented: $isPresented) {
            BottomSheetBinding(text: $text)
                .presentationDetents([.medium])
        }
    }
}

//MARK: - Binding Example
struct BottomSheetBinding: View {
    @Binding var text: String
    var body: some View {
        TextField("Enter your name", text: $text)
    }
}


#Preview {
    PropertyWrappersComponents()
}
