//
//  ResizableSheetComponent.swift
//  MasterSwiftUI
//
//  Created by Sadath S on 15/12/25.
//

import SwiftUI

struct ResizableSheetComponent: View {
    @State var isSheetOpened: Bool = false
    @State var presentationDetents: PresentationDetent = .large
    
    var body: some View {
        ZStack {
            Color.black.opacity(0.3).ignoresSafeArea()
            Button("Click To Open Sheet") {
                isSheetOpened.toggle()
            }
            .sheet(isPresented: $isSheetOpened) {
                BottomSheet()
                .presentationDetents([.medium,.large], selection: $presentationDetents)
            }
        }
    }
}


struct BottomSheet: View {
    var body: some View {
        Text("Hi This is Secound Sheet")
    }
}


#Preview {
    ResizableSheetComponent()
}
