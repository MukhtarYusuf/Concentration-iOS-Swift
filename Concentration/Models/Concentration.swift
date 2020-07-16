//
//  Concentration.swift
//  Concentration
//
//  Created by Mukhtar Yusuf on 7/1/20.
//  Copyright © 2020 Mukhtar Yusuf. All rights reserved.
//

import Foundation

struct Concentration {
    private(set) var cards = [Card]()
}

extension Collection {
    var oneAndOnly: Element? {
        return count == 1 ? first : nil
    }
}
