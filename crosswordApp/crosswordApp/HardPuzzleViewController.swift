//
//  HardPuzzleViewController.swift
//  crosswordApp
//
//  Created by Spencer Anderson on 4/10/24.
//

import UIKit

class HardPuzzleViewController: UIViewController {
    
    let appDelegate = UIApplication.shared.delegate as! AppDelegate
    
    @IBOutlet weak var timerOL: UILabel!
    
    @IBOutlet weak var hintOL: UIButton!
    
    @IBOutlet weak var cluesOL: UILabel!
    
    @IBOutlet weak var A3: UITextField!
    
    @IBOutlet weak var A4: UITextField!
    
    @IBOutlet weak var A5: UITextField!
    
    @IBOutlet weak var B2: UITextField!
    
    @IBOutlet weak var B3: UITextField!
    
    @IBOutlet weak var B4: UITextField!
    
    @IBOutlet weak var B5: UITextField!
    
    @IBOutlet weak var B6: UITextField!
    
    @IBOutlet weak var C1: UITextField!
    
    @IBOutlet weak var C2: UITextField!
    
    @IBOutlet weak var C3: UITextField!
    
    @IBOutlet weak var C4: UITextField!
    
    @IBOutlet weak var C5: UITextField!
    
    @IBOutlet weak var C6: UITextField!
    
    @IBOutlet weak var C7: UITextField!
    
    @IBOutlet weak var D1: UITextField!
    
    @IBOutlet weak var D2: UITextField!
    
    @IBOutlet weak var D3: UITextField!
    
    @IBOutlet weak var D5: UITextField!
    
    @IBOutlet weak var D6: UITextField!
    
    @IBOutlet weak var D7: UITextField!
    
    @IBOutlet weak var E1: UITextField!
    
    @IBOutlet weak var E2: UITextField!
    
    @IBOutlet weak var E3: UITextField!
    
    @IBOutlet weak var E4: UITextField!
    
    @IBOutlet weak var E5: UITextField!
    
    @IBOutlet weak var E6: UITextField!
    
    @IBOutlet weak var E7: UITextField!
    
    @IBOutlet weak var F2: UITextField!
    
    @IBOutlet weak var F3: UITextField!
    
    @IBOutlet weak var F4: UITextField!
    
    @IBOutlet weak var F5: UITextField!
    
    @IBOutlet weak var F6: UITextField!
    
    @IBOutlet weak var G3: UITextField!
    
    @IBOutlet weak var G4: UITextField!
    
    @IBOutlet weak var G5: UITextField!
    
    let stats = StatsViewController()
    

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
    
    @IBAction func hintBtnClicked(_ sender: Any) {
        stats.hints += 1
    }
    
    @IBAction func A3Edited(_ sender: Any) {
    }
    
    @IBAction func A4Edited(_ sender: Any) {
    }
    
    @IBAction func A5Edited(_ sender: Any) {
    }
    
    @IBAction func B2Edited(_ sender: Any) {
    }
    
    @IBAction func B3Edited(_ sender: Any) {
    }
    
    @IBAction func B4Edited(_ sender: Any) {
    }
    
    @IBAction func B5Edited(_ sender: Any) {
    }
    
    @IBAction func B6Edited(_ sender: Any) {
    }
    
    @IBAction func C1Edited(_ sender: Any) {
    }
    
    @IBAction func C2Edited(_ sender: Any) {
    }
    
    @IBAction func C3Edited(_ sender: Any) {
    }
    
    @IBAction func C4Edited(_ sender: Any) {
    }
    
    @IBAction func C5Edited(_ sender: Any) {
    }
    
    @IBAction func C6Edited(_ sender: Any) {
    }
    
    @IBAction func C7Edited(_ sender: Any) {
    }
    
    @IBAction func D1Edited(_ sender: Any) {
    }
    
    @IBAction func D2Edited(_ sender: Any) {
    }
    
    @IBAction func D3Edited(_ sender: Any) {
    }
    
    @IBAction func D5Edited(_ sender: Any) {
    }
    
    @IBAction func D6Edited(_ sender: Any) {
    }
    
    @IBAction func D7Edited(_ sender: Any) {
    }
    
    @IBAction func E1Edited(_ sender: Any) {
    }
    
    @IBAction func E2Edited(_ sender: Any) {
    }
    
    @IBAction func E3Edited(_ sender: Any) {
    }
    
    @IBAction func E4Edited(_ sender: Any) {
    }
    
    @IBAction func E5Edited(_ sender: Any) {
    }
    
    @IBAction func E6Edited(_ sender: Any) {
    }
    
    @IBAction func E7Edited(_ sender: Any) {
    }
    
    @IBAction func F2Edited(_ sender: Any) {
    }
    
    @IBAction func F3Edited(_ sender: Any) {
    }
    
    @IBAction func F4Edited(_ sender: Any) {
    }
    
    @IBAction func F5Edited(_ sender: Any) {
    }
    
    @IBAction func F6Edited(_ sender: Any) {
    }
    
    @IBAction func G3Edited(_ sender: Any) {
    }
    
    @IBAction func G4Edited(_ sender: Any) {
    }
    
    @IBAction func G5Edited(_ sender: Any) {
    }
    
    @IBAction func checkBtnClicked(_ sender: Any) {
    }
}
