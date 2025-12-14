//
//  AnyLayoutComponent.swift
//  MasterSwiftUI
//
//  Created by Sadath S on 12/12/25.
//

import SwiftUI

struct AnyLayoutComponent: View {
    @Environment(\.horizontalSizeClass) private var widthClass
    @Environment(\.verticalSizeClass) private var heightClass
    
    
    var body: some View {
        let anyLayout = heightClass == .regular ? AnyLayout(VStackLayout()) : AnyLayout(HStackLayout())
        anyLayout {
            Text("One")
            Text("Two")
            Text("Three")
        }
        .animation(Animation.linear(duration: 0.3), value: heightClass)
    }
}

#Preview {
    AnyLayoutComponent()
}
