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
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        if(appDelegate.darkModeCond) {
            navigationController?.overrideUserInterfaceStyle = .light
        }
        if(!appDelegate.darkModeCond) {
            navigationController?.overrideUserInterfaceStyle = .dark
        }
    }
    
}
