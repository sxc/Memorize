//
//  Array+Identifiable.swift
//  Memorize
//
//  Created by Xiaochun Shen on 2020/6/2.
//  Copyright © 2020 SXC. All rights reserved.
//

import Foundation

extension Array where Element: Identifiable {
    func firstIndex(matching: Element) -> Int? {
        for index in 0..<self.count {
            if self[index].id == matching.id {
                return index
            }
        }
        return nil
    }
}
