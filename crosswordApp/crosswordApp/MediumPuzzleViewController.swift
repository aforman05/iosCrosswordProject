//
//  MediumPuzzleViewController.swift
//  crosswordApp
//
//  Created by Andrea F on 4/6/24.
//

import UIKit

class MediumPuzzleViewController: UIViewController {
    var name: String = ""
    var hintName = ""
    let appDelegate = UIApplication.shared.delegate as! AppDelegate
    
    let hintArrTwo: [String: String] = ["1 Across":"___ and cons", "1 Down" : "The opposite of this is 'phobe'", "2 Down":"Leaning tower of pisa...","3 Down":"___sy daisy!","4 Across" : "I don't know how to make this more clear.", "4 Down" : "Could be a head____ or belly____", "5 Down" : "A informal word for eating/food", "6 Across" : "A species of monkey", "7 Across" : "If your pants rip, there's a ____ in them.", "8 Across" : "Pronounced 'u'"]
    
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
    
    @IBOutlet weak var ChooseHintBTN: UIButton!
    @IBOutlet weak var E3: UITextField!
    
    @IBOutlet weak var OneLabel: UILabel!
    
    @IBOutlet weak var TwoLabel: UILabel!
    
    @IBOutlet weak var ThreeLabel: UILabel!
    
    @IBOutlet weak var FourLabel: UILabel!
    
    @IBOutlet weak var FiveLabel: UILabel!
    
    @IBOutlet weak var hintLabel: UILabel!
    @IBOutlet weak var sixLabel: UILabel!
    
    @IBOutlet weak var sevenLabel: UILabel!
    
    @IBOutlet weak var stackView: UIStackView!
    
    @IBOutlet weak var eightLabel: UILabel!
    
    @IBAction func getHintBtnClick(_ sender: Any) {
        hintLabel.text = hintName
        appDelegate.hints += 1
    }
    
    let stats = StatsViewController()
    
    let key = ["P", "R", "O", "A", "C", "H", "O", "O", "C", "H", "I", "M", "P", "H", "O", "L", "E", "S", "E", "W", "E"]
    
    var counter = 0
    var timer = Timer()
    
    @objc func timerAction() {
        counter += 1
        timerOL.text = "\(counter)"
        appDelegate.time += counter
    }
    
    func setPuzzleNum(label : UILabel, textField: UITextField, str : String) {
        label.text=str
        label.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            label.centerXAnchor.constraint(equalTo:textField.leftAnchor, constant: 10),
            label.topAnchor.constraint(equalTo: textField.topAnchor)
        ])
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        if(appDelegate.darkModeCond) {
            navigationController?.overrideUserInterfaceStyle = .dark
        }
        if(!appDelegate.darkModeCond) {
            navigationController?.overrideUserInterfaceStyle = .light
        }
        
        // Arrays to store keys (clues) and values (hints)
        var keysArray: [String] = []
        var valuesArray: [String] = []
        
        // Iterate over the dictionary and populate the arrays
        for (key, value) in hintArrTwo {
            keysArray.append(key)
            valuesArray.append(value)
        }
        
        timer = Timer.scheduledTimer(timeInterval: 0.5, target: self, selector: #selector(timerAction), userInfo: nil, repeats: true)
        
        cluesOL.text = "ACROSS \n 1. In favor of \n 4. Sneeze sound \n 6. Monkey in the middle (of this puzzle) \n 7. What golf courses and bad plots both have \n 8. She-sheep \n DOWN \n 1. Suffix meaning 'lover of' \n 2. Where cacio e pepe is a signature dish \n 3. 'My bad!' \n 4. Feel the pain \n 5. Puppy ____ (homemade snack)"
        
        setPuzzleNum(label: OneLabel, textField: A3, str: "1")
        setPuzzleNum(label: TwoLabel, textField: A4, str: "2")
        setPuzzleNum(label: ThreeLabel, textField: A5, str: "3")
        setPuzzleNum(label: FourLabel, textField: B1, str: "4")
        setPuzzleNum(label: FiveLabel, textField: B2, str: "5")
        setPuzzleNum(label: sixLabel, textField: C1, str: "6")
        setPuzzleNum(label: sevenLabel, textField: D1, str: "7")
        setPuzzleNum(label: eightLabel, textField: E1, str: "8")
        
        // Enable the pull-down menu
        ChooseHintBTN.showsMenuAsPrimaryAction = true
        ChooseHintBTN.changesSelectionAsPrimaryAction = true
        
        // Define the closure for handling menu actions
        let optionClosure = { [self] (action: UIAction) in
            // Access the title directly without conditional binding
            let selectedTitle = action.title
            
            // Handle the selected option based on its title
            switch selectedTitle {
            case "\(keysArray[0])":
                hintName = valuesArray[0]
            case "\(keysArray[1])":
                hintName = valuesArray[1]
            case "\(keysArray[2])":
                hintName = valuesArray[2]
            case "\(keysArray[3])":
                hintName = valuesArray[3]
            case "\(keysArray[4])":
                hintName = valuesArray[4]
            case "\(keysArray[5])":
                hintName = valuesArray[5]
            case "\(keysArray[6])":
                hintName = valuesArray[6]
            case "\(keysArray[7])":
                hintName = valuesArray[7]
            default:
                break
            }
        }
        
        // Create the menu with UIAction items
        ChooseHintBTN.menu = UIMenu(children: [
            UIAction(title: "\(keysArray[0])", handler: optionClosure),
            UIAction(title: "\(keysArray[1])", handler: optionClosure),
            UIAction(title: "\(keysArray[2])", handler: optionClosure),
            UIAction(title: "\(keysArray[3])", handler: optionClosure),
            UIAction(title: "\(keysArray[4])", handler: optionClosure),
            UIAction(title: "\(keysArray[5])", handler: optionClosure),
            UIAction(title: "\(keysArray[6])", handler: optionClosure),
            UIAction(title: "\(keysArray[7])",
                     handler: optionClosure)
        ])
    }
    var allCorrect = true
    
    @IBAction func checkBtnClicked(_ sender: Any) {
        let textFields = [A3, A4, A5, B1, B2, B3, B4, B5, C1, C2, C3, C4, C5, D1, D2, D3, E1, E2, E3]
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
            hintLabel.text = "You have solved the puzzle! 🤩"
            timer.invalidate()
            appDelegate.completed += 1
        }
        else {
            hintLabel.text = "Something is wrong. 😞"
        }
    }
    
}
