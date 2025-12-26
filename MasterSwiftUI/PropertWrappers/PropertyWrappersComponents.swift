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
    @EnvironmentObject private var viewModel : PropertyWrapperViewModel
    
    var body: some View {
        Text("\(viewModel.text)")
        Button("Click To Open Sheet") {
            viewModel.changeTheText()
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
