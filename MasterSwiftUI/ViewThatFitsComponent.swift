//
//  ViewThatFitsComponent.swift
//  MasterSwiftUI
//
//  Created by Sadath S on 15/12/25.
//

import SwiftUI

struct ViewThatFitsComponent: View {
    var body: some View {
        ViewThatFits {
            Text("HI I AM A TEXT I need to see text heiracy in my parent view")
            Text("If it Does not fit in this UI hjsd djsdjs jbdjs dsbsj sd")
            Text("If it fits third UI")
        }
        .frame(maxWidth: .infinity)
        .frame(height: 200)
        .background {
            Color.blue
        }
        .padding(.horizontal)
        .shadow(radius: 10)
    }
}

#Preview {
    ViewThatFitsComponent()
}
