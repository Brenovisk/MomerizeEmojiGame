//
//  Array+Identifiable.swift
//  Memorize
//
//  Created by Breno Lucas on 17/10/22.
//

import Foundation

extension Array where Element: Identifiable {

    func firstIndex(matching: Element) -> Int? {
        for index in 0..<self.count {
            if self[index].id == matching.id {
                return index
            }
        }

        return 0 //TODO: bogus!
    }
}
