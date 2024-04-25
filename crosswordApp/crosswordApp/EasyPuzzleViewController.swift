//
//  EasyPuzzleViewController.swift
//  crosswordApp
//
//  Created by Rusty Lasiter on 4/10/24.
//

import UIKit

class EasyPuzzleViewController: UIViewController {
    var name: String = ""
    
    let appDelegate = UIApplication.shared.delegate as! AppDelegate
    
    @IBOutlet weak var TimerOL: UILabel!
    @IBOutlet weak var ButtonOL: UIButton!
    @IBOutlet weak var CluesOL: UILabel!
    
    @IBOutlet weak var A1: UITextField!
    @IBOutlet weak var A2: UITextField!
    @IBOutlet weak var A3: UITextField!
    @IBOutlet weak var A4: UITextField!
    @IBOutlet weak var A5: UITextField!
    
    @IBOutlet weak var B1: UITextField!
    @IBOutlet weak var B2: UITextField!
    @IBOutlet weak var B3: UITextField!
    @IBOutlet weak var B4: UITextField!
    @IBOutlet weak var B5: UITextField!
    
    @IBOutlet weak var C1: UITextField!
    @IBOutlet weak var C2: UITextField!
    @IBOutlet weak var C3: UITextField!
    @IBOutlet weak var C4: UITextField!
    @IBOutlet weak var C5: UITextField!
    
    @IBOutlet weak var D1: UITextField!
    @IBOutlet weak var D2: UITextField!
    @IBOutlet weak var D3: UITextField!
    
    @IBOutlet weak var E1: UITextField!
    @IBOutlet weak var E2: UITextField!
    @IBOutlet weak var E3: UITextField!
    
    let stats = StatsViewController()
    
    let key=[ "Q", "U", "A", "F", "F", "T", "H", "R", "E", "E", "R", "H", "O", "D", "E", "U", "S", "E" ]
    
    var counter = 0
    var timer = Timer()
    var allCorrect = true
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        if(appDelegate.darkModeCond) {
            navigationController?.overrideUserInterfaceStyle = .dark
        }
        if(!appDelegate.darkModeCond) {
            navigationController?.overrideUserInterfaceStyle = .light
        }
        timer = Timer.scheduledTimer(timeInterval: 0.5, target: self, selector: #selector(timerAction), userInfo: nil, repeats: true)
        
        CluesOL.text="ACROSS \n 1. Word meaning beverage that scores 20 points in Scrabble \n 6. Value of B or C in Scrabble \n 7. The R of the state abbreviation R.I. \n 8. Wear and tear \n 9. Evil spell \n DOWN \n 1. 15 minutes of an N.F.L. game. Abbr. \n 2. Sure, sure... \n 3. Came up \n 4. Company with planes that ship \n 5. Penalty for using another banks's A.T.M."
    }
    @objc func timerAction(){
        counter += 1
        TimerOL.text="\(counter)"
        stats.time += counter
    }
    
    @IBAction func hintBtnPressed(_ sender: UIButton) {
        stats.hints += 1
        if(A2.text != "U"){
            A2.text="U"
        }
        else if(B1.text != "T"){
            B1.text="T"
        }
        else if(A1.text != "Q"){
            A1.text="Q"
        }
        else if(D1.text != "U"){
            D2.text="U"
        }
        else if(E1.text != "H"){
            E2.text="H"
        }
        else if(E3.text != "X"){
            E3.text="X"
        }
        else if(C2.text != "H"){
            C2.text="H"
        }
        else if(C4.text != "F"){
            C4.text="F"
        }
        else {
            self.view.makeToast("You have used too many hints.",duration: 2.0, position: .bottom)
        }

    }
    
    @IBAction func checkBtnClicked(_ sender: Any) {
        let textFields = [A1, A2, A3, A4, A5, B1, B2, B3, B4, B5, C1, C2, C3, C4, C5, D1, D2, D3, E1, E2, E3]
        let totalBoxes = textFields.count
        for i in 1...totalBoxes-1 {
            if(textFields[i]!.text! == key[i]){
                allCorrect = true
            }
            else {
                allCorrect = false
                break
            }
        }
        if (allCorrect == true) {
            self.view.makeToast("You have solved the puzzle! 🤩",duration: 2.0, position: .bottom)
            timer.invalidate()
            stats.completed += 1
        }
        else {
            self.view.makeToast("Something is wrong. 😞",duration: 2.0, position: .bottom)
        }
    }
    
    
}
    
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */


