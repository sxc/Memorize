//
//  ContentView.swift
//  Memorize
//
//  Created by Xiaochun Shen on 2021/5/20.
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
        .foregroundColor(.red)
    }
}

struct CardView: View {
    var isFaceUp: Bool = true
    
    var body: some View {
        ZStack {
            let shape =  RoundedRectangle(cornerRadius: 20)
            if isFaceUp {
                shape.fill()
                    .foregroundColor(.white)
                shape.stroke(lineWidth: 3)
                Text("✈️")
                    .font(.largeTitle)
            } else {
                shape.fill()
            }
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
