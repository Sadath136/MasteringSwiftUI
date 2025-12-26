//
//  NavigationComponent.swift
//  MasterSwiftUI
//
//  Created by Sadath S on 23/12/25.
//

import SwiftUI

struct NavigationComponent: View {
    @State var navigationArray: [ScreenStateStackPath] = []
    
    var body: some View {
        NavigationStack(path: $navigationArray) {
                Spacer()
                VStack {
                    Button("Go To Secound Screen") {
                        navigationArray.append(.secoundScreen("Check It Out"))
                    }
                }
                Spacer()
            .navigationDestination(for: ScreenStateStackPath.self) { enumType in
                switch enumType{
                case let .secoundScreen(secoundScreenText):
                    SecondScreen(text: secoundScreenText)
                }
            }
        }
    }
}

struct SecondScreen: View {
    var text: String = "this is secound screen"
    var body: some View {
        Text(text)
    }
}

enum ScreenStateStackPath: Hashable {
    case secoundScreen(String)
}

#Preview {
    NavigationComponent()
}
