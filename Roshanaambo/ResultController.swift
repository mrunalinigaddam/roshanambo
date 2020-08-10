//
//  ResultController.swift
//  Roshanaambo
//
//  Created by Mrunalini Gaddam on 8/7/20.
//  Copyright © 2020 Udacity. All rights reserved.
//

import UIKit

//Declare emuns
enum Shape: String{
    case Paper = "Paper"
    case Rock = "Rock"
    case Scissors = "Scissors"

// This function randomly generates an opponent's play
static func randomShape() -> Shape {
    let shapes = ["Rock", "Paper", "Scissors"]
    let randomChoice = Int(arc4random_uniform(3))
    return Shape(rawValue: shapes[randomChoice])!
}
}

class ResultController: UIViewController {

    @IBOutlet weak var resLabel: UILabel!
    @IBOutlet weak var resImage: UIImageView!
    
    //users and opp selections
    var userChoice: Shape!
    private let opponentChoice: Shape = Shape.randomShape()
    //display output
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
         //displayResult()
    }
    //logic
    
    private func displayResult() {
        
        var imageName: String
        var text: String
        let matchup = "\(userChoice.rawValue) vs. \(opponentChoice.rawValue)"
        
        // Why is an exclamation point necessary? :)
        switch (userChoice!, opponentChoice) {
        case let (user, opponent) where user == opponent:
            text = "\(matchup): it's a tie"
            imageName = "isATie"
        case (.Rock, .Paper),(.Paper, .Scissors),(.Scissors, .Rock):
            text = "You win with \(matchup)"
            imageName = "\(userChoice.rawValue)-\(opponentChoice.rawValue)"
        default:
            text = "You lose with \(matchup) :(."
            imageName = "\(opponentChoice.rawValue)-\(userChoice.rawValue)"
        }
        
        imageName = imageName.lowercased()
        resImage.image = UIImage(named: imageName)
        resLabel.text = text
    }
    
// to go back to previous scree
            @IBAction func playAgain(_ sender: Any) {
                 dismiss(animated: true, completion: nil)
            }
}
