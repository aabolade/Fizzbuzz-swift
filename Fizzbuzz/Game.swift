//
//  Game.swift
//  Fizzbuzz
//
//  Created by Leke Abolade on 19/01/2017.
//  Copyright © 2017 Leke Abolade. All rights reserved.
//

import Foundation

class Game: NSObject {
    
    var score: Int
    
    override init() {
        score = 0
        super.init()
    }
    
    func play(move: String) -> Bool {
        score+=1
        return true
    }
    
}
