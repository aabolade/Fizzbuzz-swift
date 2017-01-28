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
        game.play(move: .Number)
        XCTAssertTrue(game.score == 1)

    }
    
    func testCorrectFizzMove() {
        game.score = 2
        let response = game.play(move: .Fizz)
        let result = response.right
        XCTAssertEqual(result, true)
    }
    
    func testIncorrectFizzMove() {
        game.score = 1
        let response = game.play(move: .Fizz)
        let result = response.right
        XCTAssertEqual(result, false)
    }
    
    func testCorrectBuzzMove() {
        game.score = 4
        let response = game.play(move: .Buzz)
        let result = response.right
        XCTAssertEqual(result, true)
    }
    
    func testIncorrectBuzzMove() {
        game.score = 1
        let response = game.play(move: .Buzz)
        let result = response.right
        XCTAssertEqual(result, false)
    }
    
    func testCorrectFizzBuzzMove() {
        game.score = 14
        let response = game.play(move: .FizzBuzz)
        let result = response.right
        XCTAssertEqual(result, true)
    }
    
    func testIncorrectFizzbuzzMove() {
        game.score = 1
        let response = game.play(move: .FizzBuzz)
        let result = response.right
        XCTAssertEqual(result, false)
    }
    
    func testCorrectNumberMove() {
        game.score = 1
        let response = game.play(move: .Number)
        let result = response.right
        XCTAssertEqual(result, true)
    }
    
    func testIncorrectNumberMove() {
        game.score = 2
        let response = game.play(move: .Number)
        let result = response.right
        XCTAssertEqual(result, false)
    }
    
    func testScoreIsNotIncrementedWhenWrongMove() {
        game.score = 1
        game.play(move: .Fizz)
        XCTAssertEqual(game.score, 1)
    }
    
    func testPlayShouldReturnIfMoveRight() {
        let response = game.play(move: .Number)
        XCTAssertNotNil(response.right)
    }
    
    func testPlayShouldReturnNewScore() {
        let response = game.play(move:.Number)
        XCTAssertNotNil(response.score)
    }

    
    
    
}
