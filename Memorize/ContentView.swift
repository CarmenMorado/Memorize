//
//  ContentView.swift
//  Memorize
//
//  Created by Carmen Morado on 7/17/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        HStack {
            CardView()
            CardView()
            CardView()
            CardView()
            }
            .padding(.horizontal)
            .foregroundColor(/*@START_MENU_TOKEN@*/.red/*@END_MENU_TOKEN@*/)
    }
}

struct CardView: View {
    @State var isFaceUp: Bool = true
    
    var body: some View {
        ZStack {
            let shape = RoundedRectangle(cornerRadius:20)
            if isFaceUp {
                shape.fill().frame(width: 60, height: 750).foregroundColor(.white)
                shape.stroke(lineWidth:3)
                Text("✈️")
                    .font(.largeTitle)
                
            }
            
            else {
                shape.fill()
            }
        }
        .onTapGesture {
            isFaceUp = !isFaceUp
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .preferredColorScheme(.dark)
        ContentView()
            .preferredColorScheme(.light)
    }
}
