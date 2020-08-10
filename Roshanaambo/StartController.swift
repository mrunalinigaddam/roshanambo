//
//  StartController.swift
//  Roshanaambo
//
//  Created by Mrunalini Gaddam on 8/7/20.
//  Copyright © 2020 Udacity. All rights reserved.
//

import UIKit

class StartController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
   //PAPER
    @IBAction func paper(_ sender: UIButton) {
      performSegue(withIdentifier: "generateResult", sender: sender)
    }
    
    //ROCK
    @IBAction func rock(_ sender: UIButton) {
        performSegue(withIdentifier: "generateResult", sender: sender)
    }
    //SCISSORS
    
    @IBAction func scissors(_ sender: UIButton) {
      performSegue(withIdentifier: "generateResult", sender: sender)
        
    }
    //To get user shape
    private func getUserShape(_ sender: UIButton) -> Shape {
        // Titles are set to one of: Rock, Paper, or Scissors
        let shape = sender.title(for: UIControl.State())!
        return Shape(rawValue: shape)!
    }
}
