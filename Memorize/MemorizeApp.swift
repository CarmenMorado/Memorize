//
//  MemorizeApp.swift
//  Memorize
//
//  Created by Carmen Morado on 7/17/21.
//

import SwiftUI

@main
struct MemorizeApp: App {
    private let game = EmojiMemoryGame()
    
    var body: some Scene {
        WindowGroup {
            EmojiMemoryGameView(game: game)
        }
    }
}
