//
//  Card.swift
//  Concentration
//
//  Created by Mukhtar Yusuf on 7/1/20.
//  Copyright © 2020 Mukhtar Yusuf. All rights reserved.
//

import Foundation

struct Card: Hashable {
    var isFaceUp = false
    var isMatched = false
    private var identifier: Int
}
