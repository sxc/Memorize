//
//  EmojiMemoryGameView.swift
//  Memorize
//
//  Created by Xiaochun Shen on 2020/5/30.
//  Copyright © 2020 SXC. All rights reserved.
//

import SwiftUI

struct EmojiMemoryGameView: View {
    @ObservedObject var viewModel: EmojiMemoryGame
    
    var body: some View {
        Grid(viewModel.cards) { card in
                CardView(card: card ).onTapGesture {
                    self.viewModel.choose(card: card)
                }
        .padding(5)
            }
            .padding()
            .foregroundColor(Color.orange)
        }
        
    }



// MARK: - CardView

struct CardView: View {
    var card: MemoryGame<String>.Card
    
    var body: some View {
        GeometryReader { geometry in
            self.body(for: geometry.size)
        }
        
    }
    
    func body(for size: CGSize) -> some View {
        
        ZStack {
            if self.card.isFaceUp {
                RoundedRectangle(cornerRadius: conerRadius).fill(Color.white)
                RoundedRectangle(cornerRadius: conerRadius).stroke(lineWidth: edgeLineWidth)
//                Circle().padding(5).opacity(0.4)
                Pie(startAngle: Angle.degrees(0-90), endAngle: Angle.degrees(110-90), clockwise: true).padding(5).opacity(0.4)
                Text(self.card.content)
            } else {
                if !card.isMatched {
                    RoundedRectangle(cornerRadius: conerRadius).fill()
                }
            }
        }
        .font(Font.system(size: fontSize(for: size)))
    }
    // MARK: - Drawing Constants
    
    let conerRadius: CGFloat = 10.0
    let edgeLineWidth: CGFloat = 3
    func fontSize(for size: CGSize) -> CGFloat {
        min(size.width, size.height) * 0.7
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        let game  = EmojiMemoryGame()
        game.choose(card: game.cards[1])
        
        return EmojiMemoryGameView(viewModel: game)
    }
}
