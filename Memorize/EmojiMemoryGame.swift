//
//  EmojiMemoryGame.swift
//  Memorize
//
//  Created by Xiaochun Shen on 2020/5/31.
//  Copyright © 2020 SXC. All rights reserved.
//

import SwiftUI



class EmojiMemoryGame: ObservableObject {
    @Published private var model: MemoryGame<String> = EmojiMemoryGame.createMemoryGame()
    
    static func createMemoryGame() -> MemoryGame<String> {
        let emojis: Array<String> = ["👻","🎃","🕷"]
        return  MemoryGame<String>(numberOfPairsOfCards: emojis.count ) { pairIndex in
            return emojis[pairIndex]
            
        }
    }
    
//    var objectWillChange: ObservableObjectPublisher
    
    // MARK: - Access to the Model
    
    var cards: Array<MemoryGame<String>.Card> {
        model.cards
    }
    
    // MARK: - Intent(s)
    
    func choose(card: MemoryGame<String>.Card) {
//        objectWillChange.send()
        model.choose(card: card)
    }
}
