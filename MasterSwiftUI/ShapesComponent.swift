//
//  ShapesComponent.swift
//  MasterSwiftUI
//
//  Created by Sadath S on 07/10/25.
//

import SwiftUI

struct ShapesComponent: View {
    var body: some View {
        //        Circle()
        //            .fill(.pink)
        //            .overlay {
        //                RoundedRectangle(cornerRadius: 20)
        //                    .stroke(Color.green, lineWidth: 10)
        //            }
//        VStack {
//            Rectangle()
//                .overlay {
//                    Rectangle()
//                        .trim(from: 0.55, to: 1.0)
//                        .stroke(Color.green, lineWidth: 10)
//                        
//                       // .fill(Color.blue)
//                }
//        }
//        .frame(height: 200)
//        Spacer()
        
        Capsule()
        .frame(width: 300, height: 100)
        .foregroundColor(.red)
        .overlay {
            Capsule()
                .stroke(style: StrokeStyle(lineWidth: 10.0, lineCap: .round, dash: [15.0]))
        }
    }
}

#Preview {
    ShapesComponent()
}

