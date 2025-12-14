//
//  TextFeildComponent.swift
//  MasterSwiftUI
//
//  Created by Sadath S on 12/11/25.
//

import SwiftUI

struct TextFeildComponent: View {
    
    @State var usernameText: String = ""
    @State var buttonDisabled: Bool = true
    @State var arrayOfnames: [String] = []
  
    
    var body: some View {
        VStack(spacing: 10) {
            TextField("Enter your name..", text: $usernameText)
                .textFieldStyle(.roundedBorder)
                .onChange(of: usernameText) { newValue in
                    if !validate(newValue) {
                        buttonDisabled = true
                    } else {
                        buttonDisabled = false
                    }
                }
                .padding()
            Button("Save") {
                addNames(usernameText)
            }
            .disabled(buttonDisabled)
            .padding()
            .padding(.horizontal)
            .background(Color.gray.opacity(0.3).cornerRadius(15.0))
            ScrollView(.horizontal){
                LazyHGrid(rows: [
                    .init(.flexible(),alignment: .leading),
                    .init(.flexible(),alignment: .leading)
                ]) {
                    ForEach(arrayOfnames, id: \.self) { name in
                        Text(name)
                            .background(Color.green)
                    }
                }
            }
        }
    }
    
    private func addNames(_ name: String) {
        arrayOfnames.append(name)
        usernameText = ""
    }
    
    private func validate(_ name: String) -> Bool {
        return name.count >= 3
    }
}

#Preview {
    TextFeildComponent()
}
