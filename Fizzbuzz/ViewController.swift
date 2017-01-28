//
//  ViewController.swift
//  Fizzbuzz
//
//  Created by Leke Abolade on 04/01/2017.
//  Copyright © 2017 Leke Abolade. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var gameScore: Int? {
        didSet {
            
            guard let checkedGameScore = gameScore else {
                print("Game score is nil")
                return
            }
            numberButton.setTitle("\(checkedGameScore)", for: .normal)
        }
    }
    var game: Game?
    
    @IBOutlet weak var numberButton: UIButton!
    @IBOutlet weak var fizzButton: UIButton!
    @IBOutlet weak var buzzButton: UIButton!
    @IBOutlet weak var fizzbuzzButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        game = Game()
        
        guard let checkedGame = game else {
            print("Game is nil")
            return
        }
        
        gameScore = checkedGame.score
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func play(move: Move) {
        
        guard let unwrappedGame = game else {
            print("Game is nil!")
            return
        }
        
        let response = unwrappedGame.play(move: move)
        gameScore = response.score
    }
    
    @IBAction func buttonTapped(_ sender: UIButton) {
        
        guard let unwrappedScore = gameScore else {
            print("Game score is nil")
            return
        }
        
        if sender == numberButton {
           play(move: .Number)
        } else if sender == fizzButton {
            play(move: .Fizz)
        } else if sender == buzzButton {
            play(move: .Buzz)
        } else {
            play(move: .FizzBuzz)
        }
    }
    
    
    


}

