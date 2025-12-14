//
//  GradientComponent.swift
//  MasterSwiftUI
//
//  Created by Sadath S on 08/10/25.
//

import SwiftUI

struct GradientComponent: View {
    var body: some View {
        
        RoundedRectangle(cornerRadius: 25.0)
         .fill(
            LinearGradient(colors: [Color.red,Color.colorComponentTest], startPoint: .topLeading, endPoint: .bottomTrailing)
         //   RadialGradient(colors: [Color.red,Color.blue,Color.green,Color.brown], center: .topLeading, startRadius: 100, endRadius: 20)
         )
         .frame(width: 100, height: 100)
         .shadow(color: Color.red, radius: 30.0, x: 0.0, y: 0.0)
        //  .stroke(LinearGradient(colors: [Color.red,Color.colorComponentTest], startPoint: .topLeading, endPoint: .bottomTrailing), style: StrokeStyle(lineWidth: 2.0))
    }
}

#Preview {
    GradientComponent()
}
