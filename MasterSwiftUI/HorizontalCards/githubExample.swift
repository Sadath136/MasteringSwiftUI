//
//  githubExample.swift
//  MasterSwiftUI
//
//  Created by Sadath S on 28/01/26.
//
import SwiftUI
/*
struct githubExample: View {
    let cards: [Card] = [
        Card(emoji: "😀"),
        Card(emoji: "❤️"),
        Card(emoji: "🎵"),
        Card(emoji: "☕️"),
        Card(emoji: "📚"),
        Card(emoji: "💖"),
        Card(emoji: "⚽️"),
    ]
    
    var body: some View {
        GeometryReader { reader in
            SnapperView(size: reader.size, cards: cards)
        }
    }
}

struct SnapperView: View {
    let size: CGSize
    let cards: [Card]
    private let padding: CGFloat
    private let cardWidth: CGFloat
    private let spacing: CGFloat = 15.0
    private let maxSwipeDistance: CGFloat
    
    @State private var currentCardIndex: Int = 1
    @State private var isDragging: Bool = false
    @State private var totalDrag: CGFloat = 0.0
    
    init(size: CGSize, cards: [Card]) {
        self.size = size
        self.cards = cards
        self.cardWidth = size.width * 0.85
        self.padding = (size.width - cardWidth) / 2.0
        self.maxSwipeDistance = cardWidth + spacing
    }
    
    var body: some View {
        let offset: CGFloat = maxSwipeDistance - (maxSwipeDistance * CGFloat(currentCardIndex))
        LazyHStack(spacing: spacing) {
            ForEach(cards, id: \.id) { card in
                CardViewExample(card: card, width: cardWidth)
                    .frame(height: 250)
                    .offset(x: isDragging ? totalDrag : 0)
                 //   .animation(.linear, value: isDragging)
            }
        }
        .padding(.horizontal, padding)
        .offset(x: offset, y: 0)
        .gesture(
            DragGesture()
                .onChanged { value in
                    isDragging = true
                    totalDrag = value.translation.width
                }
                .onEnded { value in
                    totalDrag = 0.0
                    isDragging = false
                    
                    if (value.translation.width < -(cardWidth / 2.0) && self.currentCardIndex < cards.count) {
                        self.currentCardIndex = self.currentCardIndex + 1
                    }
                    if (value.translation.width > (cardWidth / 2.0) && self.currentCardIndex > 1) {
                        self.currentCardIndex = self.currentCardIndex - 1
                    }
            }
        )
    }
}

struct Card: Identifiable {
    var id: UUID = UUID()
    let emoji: String
    let color: Color = Color.color
}

public extension Color {
    static var color: Color {
        Color(
            red: .random(in: 0...1),
            green: .random(in: 0...1),
            blue: .random(in: 0...1)
        )
    }
}

struct CardViewExample: View {
    let card: Card
    let width: CGFloat
    var body: some View {
        ZStack {
            Rectangle()
                .foregroundColor(Color.color)
                .cornerRadius(20)
            Text(card.emoji)
                .font(.system(size: 200, weight: .bold))
        }
        .frame(width: width)
    }
}

#Preview {
    githubExample()
}
*/
