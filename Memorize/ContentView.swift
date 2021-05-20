//
//  ContentView.swift
//  Memorize
//
//  Created by Xiaochun Shen on 2021/5/20.
//

import SwiftUI

struct ContentView: View {
    var emojis = ["🚗","🚐","🚛","🏎","🚡","🚉","🚀","💺","🚁","⚓️","🚤","🚨","🚂","🚝","🦽","🛴","🛳","🚍","🚋","🚲","","🚎"]
    @State var emojiCount = 4
    
    var body: some View {
        VStack {
            HStack {
                ForEach(emojis[0..<emojiCount], id: \.self) { emoji in
                    CardView(content: emoji)
                }
            }
            
            HStack {
                remove
                Spacer()
                add
            }
        }
        .padding(.horizontal)
        .foregroundColor(.red)
    }
    
    var remove: some View {
        Button(action: {
            emojiCount -= 1
        }) {
            Image(systemName: "minus.circle")
        }
    }
    
    var add: some View {
        Button(action: {
            emojiCount += 1
        }) {
            Image(systemName: "plus.circle")
        }
    }
    
}

struct CardView: View {
    var content: String
    @State var isFaceUp: Bool = true
    
    var body: some View {
        ZStack {
            let shape =  RoundedRectangle(cornerRadius: 20)
            if isFaceUp {
                shape.fill()
                    .foregroundColor(.white)
                shape.stroke(lineWidth: 3)
                Text(content)
                    .font(.largeTitle)
            } else {
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
//            .preferredColorScheme(.dark)
//        ContentView()
//            .preferredColorScheme(.light)
    }
}
