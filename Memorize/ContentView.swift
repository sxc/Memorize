//
//  ContentView.swift
//  Memorize
//
//  Created by Xiaochun Shen on 2021/5/20.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            
            RoundedRectangle(cornerRadius: 20)
                .stroke(lineWidth: 3)
                .padding(.horizontal)
                .foregroundColor(.red)
            
            
            Text("Hello, world!")
                .foregroundColor(.orange)
                .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
