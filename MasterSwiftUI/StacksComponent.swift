//
//  StacksComponent.swift
//  MasterSwiftUI
//
//  Created by Sadath S on 09/10/25.
//

import SwiftUI

struct StacksComponent: View {
    @State private var userNameTxtFld: String = ""
    @State private var pwdTxtFld: String = ""
    
    var body: some View {
        ZStack {
            //LinearGradient(gradient: Gradient(colors: [.blue, .red]), startPoint: .top, endPoint: .bottom)
           
            VStack(spacing: 80) {
                Spacer()
                Text("Welcome to StacksComponent")
                VStack(spacing: 25) {
                    CustomisedTextField(textToBeShown: "Enter your Name", text: $userNameTxtFld)
                    CustomisedTextField(textToBeShown :"Enter your Password", text: $pwdTxtFld)
                    Button("Login") {
                        
                    }
                    .buttonStyle(.plain)
                    .frame(height: 50.0)
                    .frame(maxWidth: .infinity)
                    .background {
                        LinearGradient(colors: [.colorComponentTest,.red], startPoint: .leading, endPoint: .trailing)
                        .cornerRadius(20.0)
                    }
                    .shadow(color: Color.colorComponentTest.opacity(0.4),
                            radius: 10.0,
                            x: 0.0,
                            y: 0.0
                    )
                }
                .padding(.horizontal, 5.0)
                Spacer()
            }
        }
        .edgesIgnoringSafeArea(.all)
    }
}

struct CustomisedTextField: View {
    var textToBeShown: String
    @Binding var text: String
    
    var body: some View {
        TextField(textToBeShown, text: $text)
            .padding()
            .background {
                RoundedRectangle(cornerRadius: 25.0)
                    .stroke(Color.black.opacity(0.6), style: StrokeStyle(lineWidth: 1.0)
                    )
            }
    }
}

#Preview {
    StacksComponent()
}
