//
//  Array+Only.swift
//  Memorize
//
//  Created by Breno Lucas on 17/10/22.
//

import Foundation

extension Array {
    var only: Element? {
        count == 1 ? first : nil
    }
}
