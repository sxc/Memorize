//
//  Array+Only.swift
//  Memorize
//
//  Created by Xiaochun Shen on 2020/6/2.
//  Copyright © 2020 SXC. All rights reserved.
//

import Foundation

extension Array {
    var only: Element? {
        count == 1 ? first: nil 
    }
}
