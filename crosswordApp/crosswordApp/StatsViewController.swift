//
//  StatsViewController.swift
//  crosswordApp
//
//  Created by Chase Durbin on 4/10/24.
//


import UIKit

class StatsViewController: UIViewController {
    var name: String = ""

    
    let appDelegate = UIApplication.shared.delegate as! AppDelegate
    
    @IBOutlet weak var hintsOL: UILabel!
    @IBOutlet weak var puzzlesCompletedOL: UILabel!
    @IBOutlet weak var timeOL: UILabel!
    @IBOutlet weak var welcomeOL: UILabel!
        override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        if(appDelegate.darkModeCond) {
            navigationController?.overrideUserInterfaceStyle = .dark
        }
        if(!appDelegate.darkModeCond) {
            navigationController?.overrideUserInterfaceStyle = .light
        }
        welcomeOL.text = "Hello, " + name
            hintsOL.text = "Hints Used: " + String(appDelegate.hints)
            timeOL.text = "Total Time: " + String(appDelegate.time)
            puzzlesCompletedOL.text = "Puzzles Completed: " + String(appDelegate.completed)
    }
    
}
    

