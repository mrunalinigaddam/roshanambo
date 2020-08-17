//
//  HistoryViewController.swift
//  RockPaperScissors
//
//  Created by Mrunalini Gaddam on 8/17/20.
//  Copyright © 2020 Gabrielle Miller-Messner. All rights reserved.
//

import UIKit
import Foundation

class HistoryViewController: UIViewController, UITableViewDataSource, UITableViewDelegate{
 var history:[RPSMatch]!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
   
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let CellId = "HistoryCell"
        let cell = tableView.dequeueReusableCell(withIdentifier: CellId, for: indexPath)
        let match = self.history[(indexPath as NSIndexPath).row]
        
        cell.textLabel!.text = victoryStatusDescription(match)
        cell.detailTextLabel!.text = "\(match.p1) vs \(match.p2)"
        return cell
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return history.count
    }
    
    func victoryStatusDescription(_ match: RPSMatch) -> String {
        
        if (match.p1 == match.p2) {
            return "Tie."
        } else if (match.p1.defeats(match.p2)) {
            return "Win!"
        } else {
            return "Loss."
        }
    }
    
    
}
