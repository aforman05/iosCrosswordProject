//
//  MediumPuzzleViewController.swift
//  crosswordApp
//
//  Created by Andrea F on 4/6/24.
//

import UIKit

class MediumPuzzleViewController: UIViewController {
    var name: String = ""
    
    let appDelegate = UIApplication.shared.delegate as! AppDelegate
    
    @IBOutlet weak var timerOL: UILabel!
    
    @IBOutlet weak var hintOL: UIButton!
    
    @IBOutlet weak var cluesOL: UILabel!
    
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
    
    @IBOutlet weak var D4: UITextField!
    
    @IBOutlet weak var D5: UITextField!
    
    @IBOutlet weak var E1: UITextField!
    
    @IBOutlet weak var E2: UITextField!
    
    @IBOutlet weak var E3: UITextField!
    
    @IBOutlet weak var OneLabel: UILabel!
    
    @IBOutlet weak var TwoLabel: UILabel!
    
    @IBOutlet weak var ThreeLabel: UILabel!
    
    @IBOutlet weak var FourLabel: UILabel!
    
    @IBOutlet weak var FiveLabel: UILabel!
    
    @IBOutlet weak var sixLabel: UILabel!
    
    @IBOutlet weak var sevenLabel: UILabel!
    
    @IBOutlet weak var stackView: UIStackView!
    
    @IBOutlet weak var eightLabel: UILabel!
    
    
    let stats = StatsViewController()
    
    let key = ["P", "R", "O", "A", "C", "H", "O", "O", "C", "H", "I", "M", "P", "H", "O", "L", "E", "S", "E", "W", "E"]
    
    var counter = 0
    var timer = Timer()
    
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
        
        cluesOL.text = "ACROSS \n 1. In favor of \n 4. Sneeze sound \n 6. Monkey in the middle (of this puzzle) \n 7. What golf courses and bad plots both have \n 8. She-sheep \n DOWN \n 1. Suffix meaning 'lover of' \n 2. Where cacio e pepe is a signature dish \n 3. 'My bad!' \n 4. Feel the pain \n 5. Puppy ____ (homemade snack)"
        
        OneLabel.text="1"
        OneLabel.translatesAutoresizingMaskIntoConstraints = false
                NSLayoutConstraint.activate([
                    OneLabel.centerXAnchor.constraint(equalTo: A3.leftAnchor, constant: 10),
                    OneLabel.topAnchor.constraint(equalTo: A3.topAnchor)
                ])
        setPuzzleNum(label: OneLabel, textField: A3, str: "1")
        setPuzzleNum(label: TwoLabel, textField: A4, str: "2")
        setPuzzleNum(label: ThreeLabel, textField: A5, str: "3")
        setPuzzleNum(label: FourLabel, textField: B1, str: "4")
        setPuzzleNum(label: FiveLabel, textField: B2, str: "5")
        setPuzzleNum(label: sixLabel, textField: C1, str: "6")
        setPuzzleNum(label: sevenLabel, textField: D1, str: "7")
        setPuzzleNum(label: eightLabel, textField: E1, str: "8")
    }
    
    func setPuzzleNum(label : UILabel, textField: UITextField, str : String) {
        label.text=str
        label.translatesAutoresizingMaskIntoConstraints = false
                NSLayoutConstraint.activate([
                    label.centerXAnchor.constraint(equalTo:textField.leftAnchor, constant: 10),
                    label.topAnchor.constraint(equalTo: textField.topAnchor)
                ])
    }
    
    @IBAction func hintBtnClicked(_ sender: Any) {
        stats.hints += 1
        if (A3.text != "P") {
            A3.text = "P"
        }
        else if (B1.text != "A") {
            B1.text = "A"
        }
        else if (C1.text != "C") {
            C1.text = "C"
        }
        else if (D1.text != "H") {
            D1.text = "H"
        }
        else if (E1.text != "E") {
            E1.text = "E"
        }
        else if (A4.text != "R") {
            A4.text = "R"
        }
        else if (A5.text != "O") {
            A5.text = "O"
        }
        else if (B2.text != "C") {
            B2.text = "C"
        }
        else {
            self.view.makeToast("You have used too many hints.",duration: 2.0, position: .bottom)
        }
    }
    
    var allCorrect = true
    
    @IBAction func checkBtnClicked(_ sender: Any) {
        let textFields = [A3, A4, A5, B1, B2, B3, B4, B5, C1, C2, C3, C4, C5, D1, D2, D3, D4, D5, E1, E2, E3]
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
    
    @objc func timerAction() {
        counter += 1
        timerOL.text = "\(counter)"
        stats.time += counter
    }
    
    
}
