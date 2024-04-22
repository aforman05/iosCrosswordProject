//
//  StatsViewController.swift
//  crosswordApp
//
//  Created by Chase Durbin on 4/10/24.
//

import UIKit

class StatsViewController: UIViewController {

    let appDelegate = UIApplication.shared.delegate as! AppDelegate
    
    @IBOutlet weak var hintsOL: UILabel!
    @IBOutlet weak var puzzlesCompletedOL: UILabel!
    @IBOutlet weak var timeOL: UILabel!
    @IBOutlet weak var welcomeOL: UILabel!
    var name: String = ""
    var hints: Int = 0
    var time: Int = 0
    var completed: Int = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        if(appDelegate.darkModeCond) {
            navigationController?.overrideUserInterfaceStyle = .light
        }
        if(!appDelegate.darkModeCond) {
            navigationController?.overrideUserInterfaceStyle = .dark
        }
        welcomeOL.text = "Hello, " + name
        hintsOL.text = "Hints Used: " + String(hints)
        timeOL.text = "Total Time: " + String(time)
        puzzlesCompletedOL.text = "Puzzles Completed: " + String(completed)
    }
    
}
