//
//  ToggleComponent.swift
//  MasterSwiftUI
//
//  Created by Sadath S on 12/11/25.
//

import SwiftUI

struct ToggleComponent: View {
    @State var isOnline: Bool = false
    
    var body: some View {
        VStack {
            Text("Status: \(isOnline ? "Online" : "Offline")")
            Toggle(isOn: $isOnline) {
                Text("Switch")
            }
            .tint(Color.red) //Used to change Color of toggle
            .colorMultiply(Color.yellow) //Used For Backgroung of Switch Circle
            .padding()
            Spacer()
        }
    }
}

#Preview {
    ToggleComponent()
}
