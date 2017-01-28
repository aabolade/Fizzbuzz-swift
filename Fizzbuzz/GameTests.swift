//
//  GameTests.swift
//  Fizzbuzz
//
//  Created by Leke Abolade on 19/01/2017.
//  Copyright © 2017 Leke Abolade. All rights reserved.
//

import XCTest
@testable import Fizzbuzz

class GameTests: XCTestCase {
    
    let game = Game()
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testGameStartsAtZero() {
        XCTAssertTrue(game.score == 0)
    }
    
    func testOnPlayScoreIncremented() {
        game.play(move: "1")
        XCTAssertTrue(game.score == 1)

    }
    
    func testCorrectFizzMove() {
        game.score = 2
        let result = game.play(move: "Fizz")
        XCTAssertEqual(result, true)
    }
    
    func testIncorrectFizzMove() {
        game.score = 1
        let result = game.play(move: "Fizz")
        XCTAssertEqual(result, false)
    }
    
    func testCorrectBuzzMove() {
        game.score = 4
        let result = game.play(move: "Buzz")
        XCTAssertEqual(result, true)
    }
    
    func testIncorrectBuzzMove() {
        game.score = 1
        let result = game.play(move: "Buzz")
        XCTAssertEqual(result, false)
    }
    
    func testCorrectFizzBuzzMove() {
        game.score = 14
        let result = game.play(move: "Fizzbuzz")
        XCTAssertEqual(result, true)
    }
    
    func testIncorrectFizzbuzzMove() {
        game.score = 1
        let result = game.play(move: "Fizzbuzz")
        XCTAssertEqual(result, false)
    }
    
    func testCorrectNumberMove() {
        game.score = 1
        let result = game.play(move: "2")
        XCTAssertEqual(result, true)
    }
    
    func testIncorrectNumberMove() {
        game.score = 2
        let result = game.play(move: "3")
        XCTAssertEqual(result, false)
    }
    
    func testScoreIsNotIncrementedWhenWrongMove() {
        game.score = 1
        game.play(move: "Fizz")
        XCTAssertEqual(game.score, 1)
    }

    
    
    
}
