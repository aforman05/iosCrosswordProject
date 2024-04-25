//
//  HardPuzzleViewController.swift
//  crosswordApp
//
//  Created by Spencer Anderson on 4/10/24.
//

import UIKit

class HardPuzzleViewController: UIViewController {
    var name: String = ""
    var hintName = ""
    let appDelegate = UIApplication.shared.delegate as! AppDelegate
    let hintArrThree: [String:String] = ["1 Across":"Opposite of good", "1 Down" : "More examples would be fried pickles, Mozzarella sticks, artichoke dip. What place do you find these at?", "2 Down":"She was in Ghosted with Chris Hemsworth","3 Down":"This person likes to ask you questions and then shove instruments in your mouth.","4 Across" : "This is a homophone (similar sounding) with 'pain'", "4 Down" : "Someone who flies a plane", "5 Down" : "When you make the bed, you might wash the _____s", "6 Across" : "Aggressive Fish Type", "6 Down" : "These are often located on the back of bathroom doors...", "7 Down" : "First three letters of this word", "8 Across" : "A popular christmas movie", "9 Across" : "'T Minus ___ Seconds!", "10 Across" : "'It's a bag of _______", "11 Down" : "Yin and Yang comes from this belief system", "12 Across" : "Another clue could be 'What is heated bread?'", "13 Across" : "An abbreviation of 'Department of Transportation'"]
    
    @IBOutlet weak var timerOL: UILabel!
    
    @IBOutlet weak var hintOL: UIButton!
    
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
    
    @IBOutlet weak var oneLabel: UILabel!
    
    @IBOutlet weak var twoLabel: UILabel!
    
    @IBOutlet weak var ChooseHintBTN: UIButton!
    
    @IBOutlet weak var threeLabel: UILabel!
    
    @IBOutlet weak var fourLabel: UILabel!
    
    @IBOutlet weak var fiveLabel: UILabel!
    
    @IBOutlet weak var sixLabel: UILabel!
    
    @IBOutlet weak var sevenLabel: UILabel!
    
    @IBOutlet weak var eightLabel: UILabel!
    
    @IBOutlet weak var nineLabel: UILabel!
    
    @IBOutlet weak var hintLabel: UILabel!
    @IBOutlet weak var tenLabel: UILabel!
    
    @IBOutlet weak var elevenLabel: UILabel!
    
    @IBOutlet weak var twelveLabel: UILabel!
    
    @IBOutlet weak var thirteenLabel: UILabel!
    
    @IBOutlet weak var cluesOL: UILabel!
    
    @IBAction func checkBtnClicked(_ sender: Any) {
        if (A3.text == "B" && A4.text == "A" && A5.text == "D" && B2.text == "P" && B3.text == "A" && B4.text == "N" && B5.text == "E" && B6.text == "S" && C1.text == "P" && C2.text == "I" && C3.text == "R" && C4.text == "A" && C5.text == "N" && C6.text == "H" && C7.text == "A" && D1.text == "E" && D2.text == "L" && D3.text == "F" && D5.text == "T" && D6.text == "E" && D7.text == "N" && E1.text == "G" && E2.text == "O" && E3.text == "O" && E4.text == "D" && E5.text == "I" && E6.text == "E" && E7.text == "S" && F2.text == "T" && F3.text == "O" && F4.text == "A" && F5.text == "S" && F6.text == "T" && G3.text == "D" && G4.text == "O" && G5.text == "T") {
            statusOL.text = "Puzzle complete!"
        }
        else {
            statusOL.text = "Something is wrong!"
        }
     }
    
    @objc func timerAction() {
        counter += 1
        timerOL.text = "\(counter)"
        appDelegate.time = counter
}

    @IBAction func getHintBtnClick(_ sender: Any) {
        hintLabel.text = hintName
        appDelegate.hints += 1
    }
    
    let stats = StatsViewController()
    
    var answerKey = ["B", "A", "D", "P", "A", "N", "E", "S", "P", "I", "R", "A", "N", "H", "A", "E", "L", "F", "T", "E", "N", "G", "O", "O", "D", "I", "E", "S", "T", "O", "A", "S", "T", "D", "O", "T"]
    
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
        
        cluesOL.text = "ACROSS \n 1. Rotten \n 4. Window segments \n 6. Part of school that totally bites? \n 8. 2003 Will Ferrell film \n 9. Approximate percentage of the world's population that is left-handed \n 10. Party bag contents \n 12. Wedding reception speech \n 13. When tripled, symbol of a texter's typing \n \n DOWN \n 1. Wings, nachos, onion rings, etc. \n 2. Actress de Armas \n 3. Canine handler \n 4. Season one, episode one \n 5. Mattress cover \n 6. Place to hang a coat \n 7 The 'A' of Q&A: Abbr \n 11. Philosophy for Laozi"
        
        // Arrays to store keys (clues) and values (hints)
        var keysArray: [String] = []
        var valuesArray: [String] = []

        // Iterate over the dictionary and populate the arrays
        for (key, value) in hintArrThree {
            keysArray.append(key)
            valuesArray.append(value)
        }
        
        setPuzzleNum(label: oneLabel, textField: A3, str: "1")
        setPuzzleNum(label: twoLabel, textField: A4, str: "2")
        setPuzzleNum(label: threeLabel, textField: A5, str: "3")
        setPuzzleNum(label: fourLabel, textField: B2, str: "4")
        setPuzzleNum(label: fiveLabel, textField: B6, str: "5")
        setPuzzleNum(label: sixLabel, textField: C1, str: "6")
        setPuzzleNum(label: sevenLabel, textField: C7, str: "7")
        setPuzzleNum(label: eightLabel, textField: D1, str: "8")
        setPuzzleNum(label: nineLabel, textField: D5, str: "9")
        setPuzzleNum(label: tenLabel, textField: E1, str: "10")
        setPuzzleNum(label: elevenLabel, textField: E4, str: "11")
        setPuzzleNum(label: twelveLabel, textField: F2, str: "12")
        setPuzzleNum(label: thirteenLabel, textField: G3, str: "13")

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
            case "\(keysArray[8])":
                hintName = valuesArray[8]
            case "\(keysArray[9])":
                hintName = valuesArray[9]
            case "\(keysArray[10])":
                hintName = valuesArray[10]
            case "\(keysArray[11])":
                hintName = valuesArray[11]
            case "\(keysArray[12])":
                hintName = valuesArray[12]
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
            UIAction(title: "\(keysArray[7])", handler: optionClosure),
            UIAction(title: "\(keysArray[8])", handler: optionClosure),
            UIAction(title: "\(keysArray[9])", handler: optionClosure),
            UIAction(title: "\(keysArray[10])", handler: optionClosure),
            UIAction(title: "\(keysArray[11])", handler: optionClosure),
            UIAction(title: "\(keysArray[12])", handler: optionClosure)
        ])
    }
    @IBAction func checkBTNClicked(_ sender: Any) {
        let textFields = [A3, A4, A5, B2, B3, B4, B5, B6, C1, C2, C3, C4, C5,C6,C7, D1, D2, D3,D5,D6,D7, E1, E2, E3,E4,E5,E6,E7,F2,F3,F4,F5,F6,G3,G4,G5]
        let totalBoxes = textFields.count
        for i in 1...totalBoxes-1 {
            if(textFields[i]!.text! == answerKey[i]){
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
    var allCorrect = true
    
    }


    
    func setPuzzleNum(label : UILabel, textField: UITextField, str : String) {
        label.text=str
        label.translatesAutoresizingMaskIntoConstraints = false
                NSLayoutConstraint.activate([
                    label.centerXAnchor.constraint(equalTo:textField.leftAnchor, constant: 10),
                    label.topAnchor.constraint(equalTo: textField.topAnchor)
                ])
    }
