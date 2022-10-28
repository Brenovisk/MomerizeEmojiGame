//
//  EmojiMemoryGame.swift
//  Memorize
//
//  Created by Breno Lucas on 08/10/22.
//

import SwiftUI


class EmojiMemoryGame: ObservableObject {
    @Published private var model: MemoryGame<String> = EmojiMemoryGame.createMemoryGame()

    private static func createMemoryGame() -> MemoryGame<String> {
        let emojis = ["👻", "🎃", "🦂", "🕷"]

        let initNumberOfPairsOfCardsStr = stride(from: 2, through: emojis.count, by: 1).map(String.init).shuffled()[0]
        let initNumberOfPairsOfCards = Int(initNumberOfPairsOfCardsStr) ?? 0

        return MemoryGame<String>(numberOfPairsOfCards: initNumberOfPairsOfCards) { (pairIndex) in
            return emojis[pairIndex]
        }
    }

    //MARK - Access to the Model

    var cards: Array<MemoryGame<String>.Card> {
        return model.cards
    }

    //MARK - Intent(s)

    func choose(card: MemoryGame<String>.Card) {
        model.choose(card: card)
    }
    
    func resetGame() {
        model = EmojiMemoryGame.createMemoryGame()
    }

}
