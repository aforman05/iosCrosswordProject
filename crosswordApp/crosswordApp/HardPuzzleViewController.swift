//
//  HardPuzzleViewController.swift
//  crosswordApp
//
//  Created by Spencer Anderson on 4/10/24.
//

import UIKit

class HardPuzzleViewController: UIViewController {
    var name: String = ""
    
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
    
    @IBOutlet weak var statusOL: UILabel!
    
    let stats = StatsViewController()
    
    var answerKey = ["B", "A", "D", "P", "A", "N", "E", "S", "P", "I", "R", "A", "N", "H", "A", "E", "L", "F", "T", "E", "N", "G", "O", "O", "D", "I", "E", "S", "T", "O", "A", "S", "T", "D", "O", "T"]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        if(appDelegate.darkModeCond) {
            navigationController?.overrideUserInterfaceStyle = .light
        }
        if(!appDelegate.darkModeCond) {
            navigationController?.overrideUserInterfaceStyle = .dark
        }
        
        cluesOL.text = "ACROSS \n 1. Rotten \n 4. Window segments \n 6. Part of school that totally bites? \n 8. 2003 Will Ferrell film \n 9. Approximate percentage of the world's population that is left-handed \n 10. Party bag contents \n 12. Wedding reception speech \n 13. When tripled, symbol of a texter's typing \n DOWN \n 1. Wings, nachos, onion rings, etc. \n 2. Actress de Armas \n 3. Canine handler \n 4. Season one, episode one \n 5. Mattress cover \n 6. Place to hang a coat \n 7 The 'A' of Q&A: Abbr \n 11. Philosophy for Laozi"
    }
    
    @IBAction func hintBtnClicked(_ sender: Any) {
        stats.hints += 1
        
        if (A3.text != "B") {
            A3.text = "B"
        }
        else if (B2.text != "P") {
            B2.text = "P"
        }
        else if (C1.text != "P") {
            C1.text = "P"
        }
        else if (D1.text != "E") {
            D1.text = "E"
        }
        else if (D5.text != "T") {
            D5.text = "T"
        }
        else if (E1.text != "G") {
            E1.text = "G"
        }
        else if (F2.text != "T") {
            F2.text = "T"
        }
        else if (G3.text != "D") {
            G3.text = "D"
        }
        else if (A4.text != "A") {
            A4.text = "A"
        }
        else if (A5.text != "D") {
            A5.text = "D"
        }
        else if (B6.text != "S") {
            B6.text = "S"
        }
        else if (C7.text != "A") {
            C7.text = "A"
        }
        else if (E4.text != "D") {
            E4.text = "D"
        }
        else {
            statusOL.text = "You have used too many hints."
        }
    }
    
    @IBAction func checkBtnClicked(_ sender: Any) {
        if (A3.text == "B" && A4.text == "A" && A5.text == "D" && B2.text == "P" && B3.text == "A" && B4.text == "N" && B5.text == "E" && B6.text == "S" && C1.text == "P" && C2.text == "I" && C3.text == "R" && C4.text == "A" && C5.text == "N" && C6.text == "H" && C7.text == "A" && D1.text == "E" && D2.text == "L" && D3.text == "F" && D5.text == "T" && D6.text == "E" && D7.text == "N" && E1.text == "G" && E2.text == "O" && E3.text == "O" && E4.text == "D" && E5.text == "I" && E6.text == "E" && E7.text == "S" && F2.text == "T" && F3.text == "O" && F4.text == "A" && F5.text == "S" && F6.text == "T" && G3.text == "D" && G4.text == "O" && G5.text == "T") {
            statusOL.text = "Puzzle complete!"
        }
        else {
            statusOL.text = "Something is wrong!"
        }
     }
}
