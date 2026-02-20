//
//  HorizontalMxnCards.swift
//  MasterSwiftUI
//
//  Created by Sadath S on 28/01/26.
//

import SwiftUI

struct HorizontalMxnCards: View {
    var cardsData: [String] = ["One","Two","Three","Four","Five"]
    var gridItems: [GridItem] = [.init(.flexible(), spacing: 0, alignment: .center)]
    
    var cardWidth: CGFloat {
        (UIScreen.main.bounds.width * 0.75)
    }
    
    var screenWidth: CGFloat {
        return UIScreen.main.bounds.width
    }
    
    var body: some View {
        ScrollView(.horizontal) {
            LazyHGrid(rows: gridItems, alignment: .center, spacing: 0) {
                ForEach(0..<cardsData.count) { index in
                    CardView(stringText: cardsData[index])
                        
                    .frame(width: cardWidth, height: 180)
                    .background(Color.red)
                    .padding(.horizontal,(screenWidth - cardWidth)/4)
                    .scrollTargetLayout()
                  //  .offset(x: 50)
                }
            }
        }
        .scrollTargetBehavior(.paging)
    }
//    var body: some View {
//        ScrollView(.horizontal) {
//            HStack(spacing: 16) {
//                ForEach(cardsData, id: \.self) { card in
//                    RoundedRectangle(cornerRadius: 20)
//                        .fill(Color.blue.opacity(0.8))
//                        .frame(width: 280, height: 180)
//                        .overlay(
//                            Text("Card \(card)")
//                                .font(.title)
//                                .foregroundColor(.white)
//                        )
//                        .scrollTargetLayout()
//                }
//            }
//            .padding(.horizontal, 32)
//        }
//        .scrollTargetBehavior(.paging)
//    }
}

//struct CarouselView: View {
//    let cards = Array(1...5)
//
//    
//}

struct CardView: View {
    private var stringText: String
    
    init(stringText: String) {
        self.stringText = stringText
    }
    
    var body: some View {
        VStack(alignment: .center) {
            Text(stringText)
        }
        .frame(maxWidth: .infinity,alignment:. center)
    }
}

#Preview {
    HorizontalMxnCards()
}
