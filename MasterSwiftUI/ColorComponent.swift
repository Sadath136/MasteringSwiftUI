//
//  ColorComponent.swift
//  MasterSwiftUI
//
//  Created by Sadath S on 07/10/25.
//

import SwiftUI

struct ColorComponent: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 25.0)
            // .fill(Color("ColorComponentTest"))
            .fill(Color(uiColor: UIColor.secondarySystemBackground))
            .frame(width: 300.0, height: 300.0)
        //    .shadow(radius: 20.0)
            .shadow(color: Color.colorComponentTest, radius: 20.0, x: 23.0, y: 30.0)
    }
}

#Preview {
    ColorComponent()
}
