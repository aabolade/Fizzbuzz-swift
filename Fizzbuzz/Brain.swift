//
//  Brain.swift
//  Fizzbuzz
//
//  Created by Leke Abolade on 04/01/2017.
//  Copyright © 2017 Leke Abolade. All rights reserved.
//

import Foundation

class Brain: NSObject {
    
    func isDivisibleByThree(number: Int) -> Bool {
        if (number%3 == 0) {
            return true
        } else {
            return false
        }
    }
    
    func isDvisibleByFive(number: Int) -> Bool {
        if (number%5 == 0) {
            return true
        } else {
            return false
        }
    }
    
}
