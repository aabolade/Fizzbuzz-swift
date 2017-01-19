//
//  Brain.swift
//  Fizzbuzz
//
//  Created by Leke Abolade on 04/01/2017.
//  Copyright © 2017 Leke Abolade. All rights reserved.
//

import Foundation

class Brain: NSObject {
    
    func isDivisibleBy(divisor: Int, number: Int) -> Bool {
        return number % divisor == 0
    }
    
    func isDivisibleByThree(number: Int) -> Bool {
            return isDivisibleBy(divisor: 3, number: number)
    }
    
    func isDvisibleByFive(number: Int) -> Bool {
        return isDivisibleBy(divisor: 5, number:number)
    }
    
    func isDivisibleByFifteen(number: Int) -> Bool {
        return isDivisibleBy(divisor: 15, number: number)
    }
    
    func check(number: Int) -> String {
        if isDivisibleBy(divisor: 15, number: number) {
            return "Fizzbuzz"
        } else if isDivisibleBy(divisor: 5, number: number) {
            return "Buzz"
        } else if isDivisibleBy(divisor: 3, number: number) {
            return "Fizz"
        } else {
            return "\(number)"
        }
        
    }
    
    
}
