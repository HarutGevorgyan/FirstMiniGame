//
//  EmojiProvider.swift
//  EmojiSlotMachine
//
//  Created by Harut on 20/01/2019.
//  Copyright © 2019 Harut. All rights reserved.
//

import Foundation
import GameKit

let emojies = ["👻","🇦🇲","🐷","🙉"]

func randomEmoji() -> String {
    return emojies[Int.random(in: 0...emojies.count-1)]
}

