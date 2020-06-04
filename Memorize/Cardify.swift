//
//  Cardify.swift
//  Memorize
//
//  Created by Xiaochun Shen on 2020/6/4.
//  Copyright © 2020 SXC. All rights reserved.
//

import SwiftUI

struct Cardify: ViewModifier {
    var isFaceUp: Bool
    
    func body(content: Content) -> some View {
        
        ZStack {
        if  isFaceUp {
                      RoundedRectangle(cornerRadius: conerRadius).fill(Color.white)
                      RoundedRectangle(cornerRadius: conerRadius).stroke(lineWidth: edgeLineWidth)
                      content
                  } else {
                          RoundedRectangle(cornerRadius: conerRadius).fill()
                      }
                  }
              }
    let conerRadius: CGFloat = 10.0
    let edgeLineWidth: CGFloat = 3
}


extension View {
    func cardify(isFaceUp: Bool) -> some View {
        self.modifier(Cardify(isFaceUp: isFaceUp))
    }
}
