//
//  ViewControllerUnitTests.swift
//  Fizzbuzz
//
//  Created by Leke Abolade on 28/01/2017.
//  Copyright © 2017 Leke Abolade. All rights reserved.
//

import XCTest
@testable import Fizzbuzz

class ViewControllerUnitTests: XCTestCase {
    
    var viewController : ViewController!
    
    override func setUp() {
        super.setUp()
        
        let storyboard = UIStoryboard(name: "Main", bundle: Bundle.main)
        viewController = storyboard.instantiateViewController(withIdentifier: "ViewController") as! ViewController
        UIApplication.shared.keyWindow!.rootViewController = viewController
        
        let _ = viewController.view
        
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testMove1IncrementsScore() {
        viewController.play(move: "1")
        let newScore = viewController.gameScore
        XCTAssertEqual(newScore,1)
    }
    
    func testMove2IncrementScore() {
        viewController.play(move: "1")
        viewController.play(move: "2")
        let newScore =  viewController.gameScore
        XCTAssertEqual(newScore,2)
    }
    
    func testHasGame() {
        XCTAssertNotNil(viewController.game)
    }
    
    
    
    
}
