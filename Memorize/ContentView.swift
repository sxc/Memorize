//
//  ContentView.swift
//  Memorize
//
//  Created by Xiaochun Shen on 2020/5/30.
//  Copyright © 2020 SXC. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        HStack {
            ForEach(0 ..< 4) { item in
                CardView(isFaceUp: false)
            }
        }
            .padding(10)
            .foregroundColor(Color.orange)
            .font(Font.largeTitle)
        }
        
    }

// MARK: - CardView

struct CardView: View {
    var isFaceUp: Bool
    var body: some View {
        ZStack {
            if isFaceUp {
                RoundedRectangle(cornerRadius: 10.0).fill(Color.white)
                RoundedRectangle(cornerRadius: 10.0).stroke(lineWidth: 3)
                Text("👻").font(Font.largeTitle)
            } else {
                RoundedRectangle(cornerRadius: 10.0).fill()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
