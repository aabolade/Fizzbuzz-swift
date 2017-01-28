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
    let brain: Brain
    
    override init() {
        score = 0
        brain = Brain()
        super.init()
    }
    
    func play(move: String) -> (right: Bool, score: Int) {
    
        
        let result = brain.check(number: score + 1)
        
        if  (result == move) {
            score+=1
            return (true, score)
        } else {
            return (false, score)
        }
    }
    
}
