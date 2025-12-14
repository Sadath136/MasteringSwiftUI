//
//  AlertComponent.swift
//  MasterSwiftUI
//
//  Created by Sadath S on 11/11/25.
//

import SwiftUI

struct AlertComponent: View {
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
            .alert(isPresented: $isPresented) {
                Alert(title: Text("Are you Sure you want to Cancel?"), primaryButton: .cancel(), secondaryButton: .destructive(Text("Confirm"), action: {
                    print("Perfom your operation")
                }))
            }
        }
    }
}

struct FeedView: View {
    
    @Binding var isPresented: Bool
    
    var body: some View {
        VStack {
            HStack(spacing: 10.0) {
                Image("ImageAsset")
                    .resizable()
                    .scaledToFill()
                    .clipShape(Circle())
                    .frame(width: 40,height: 40)
                Text("Sadath S")
                Spacer(minLength: 5.0)
                Image(systemName: "ellipsis")
                    .onTapGesture {
                        isPresented.toggle()
                    }
                    .accentColor(.black)
            }
            .padding(.horizontal,7.0)
            Rectangle()
                .frame(maxWidth: .infinity)
                .frame(height: 320.0)
        }
    }
}




#Preview {
    AlertComponent()
}
