//
//  MemorizeApp.swift
//  Memorize
//
//  Created by Carmen Morado on 7/17/21.
//

import SwiftUI

@main
struct MemorizeApp: App {
    let game = EmojiMemoryGame()
    
    var body: some Scene {
        WindowGroup {
            ContentView(viewModel: game)
        }
    }
}
