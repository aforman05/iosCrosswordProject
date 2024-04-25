//
//  EasyPuzzleViewController.swift
//  crosswordApp
//
//  Created by Rusty Lasiter on 4/10/24.
//

import UIKit

class EasyPuzzleViewController: UIViewController {
    var name: String = ""
    var hintName = ""
    let appDelegate = UIApplication.shared.delegate as! AppDelegate
    
    let hintArrOne: [String: String] = ["1 Across" : "This word is the first five letters of the main, large red ball in Quiditch", "1 Down" : "The same as 1/4, Abbr.", "2 Down" : "This is two words, the first is often a buffer/filler word, the second being used when confused", "3 Down" : "The sun does this, also includes the name of a romantic flower", "4 Down" : "Not USPS but...", "5 Down" : "Another word for a tax", "6 Across" : "Uno, Dos..., in english", "7 Across" : "It's real small and adjacent to connecticut", "8 Across" : "similiar in looks and meaning to utilize", "9 Across" : "Also the prefix for something 6-sided"]
    
    @IBOutlet weak var TimerOL: UILabel!
    
    @IBOutlet weak var cluesOL: UILabel!
    
    
    @IBOutlet weak var getHintBtnClick: UIButton!
    @IBOutlet weak var A1: UITextField!
    @IBOutlet weak var A2: UITextField!
    @IBOutlet weak var A3: UITextField!
    @IBOutlet weak var A4: UITextField!
    @IBOutlet weak var A5: UITextField!
    
    @IBOutlet weak var ChooseHintBTN: UIButton!
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
    
    @IBOutlet weak var hintLabel: UILabel!
    @IBOutlet weak var D1: UITextField!
    @IBOutlet weak var D2: UITextField!
    @IBOutlet weak var D3: UITextField!
    
    @IBOutlet weak var E1: UITextField!
    @IBOutlet weak var E2: UITextField!
    @IBOutlet weak var E3: UITextField!
    
    @IBOutlet weak var oneLable: UILabel!
    @IBOutlet weak var twoLabel: UILabel!
    @IBOutlet weak var threeLabel: UILabel!
    @IBOutlet weak var fourLabel: UILabel!
    @IBOutlet weak var fiveLabel: UILabel!
    @IBOutlet weak var sixLabel: UILabel!
    @IBOutlet weak var sevenLabel: UILabel!
    @IBOutlet weak var eightLabel: UILabel!
    @IBOutlet weak var nineLabel: UILabel!
    
    @IBOutlet weak var scrollView: UIScrollView!
    
    let stats = StatsViewController()
    
    let key=[ "Q", "U", "A", "F", "F", "T", "H", "R", "E", "E", "R", "H", "O", "D", "E", "U", "S", "E" ]
    
    var counter = 0
    var timer = Timer()
    var allCorrect = true
    
    @objc func timerAction() {
        counter += 1
        TimerOL.text = "\(counter)"
        stats.time += counter
}
    
    @IBAction func getHintBtnClick(_ sender: Any) {
        hintLabel.text = hintName
        stats.hints += 1
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if(!appDelegate.hintCond) {
            ChooseHintBTN.isHidden=true
            getHintBtnClick.isHidden=true
            hintLabel.text=""
        }
        // Do any additional setup after loading the view.
        if(appDelegate.darkModeCond) {
            navigationController?.overrideUserInterfaceStyle = .dark
        }
        if(!appDelegate.darkModeCond) {
            navigationController?.overrideUserInterfaceStyle = .light
        }
        timer = Timer.scheduledTimer(timeInterval: 0.5, target: self, selector: #selector(timerAction), userInfo: nil, repeats: true)
        
        cluesOL.text="ACROSS \n 1. Word meaning beverage that scores 20 points in Scrabble \n 6. Value of B or C in Scrabble \n 7. The R of the state abbreviation R.I. \n 8. Wear and tear \n 9. Evil spell \n DOWN \n 1. 15 minutes of an N.F.L. game. Abbr. \n 2. Sure, sure... \n 3. Came up \n 4. Company with planes that ship \n 5. Penalty for using another banks's A.T.M."
        
        setPuzzleNum(label: oneLable, textField: A1, str: "1")
        setPuzzleNum(label: twoLabel, textField: A2, str: "2")
        setPuzzleNum(label: threeLabel, textField: A3, str: "3")
        setPuzzleNum(label: fourLabel, textField: A4, str: "4")
        setPuzzleNum(label: fiveLabel, textField: A5, str: "5")
        setPuzzleNum(label: sixLabel, textField: B1, str: "6")
        setPuzzleNum(label: sevenLabel, textField: C1, str: "7")
        setPuzzleNum(label: eightLabel, textField: D1, str: "8")
        setPuzzleNum(label: nineLabel, textField: E1, str: "9")
        
        // Arrays to store keys (clues) and values (hints)
        var keysArray: [String] = []
        var valuesArray: [String] = []

        // Iterate over the dictionary and populate the arrays
        for (key, value) in hintArrOne {
            keysArray.append(key)
            valuesArray.append(value)
        }
        
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
    
    func setPuzzleNum(label : UILabel, textField: UITextField, str : String) {
        label.text=str
        label.translatesAutoresizingMaskIntoConstraints = false
                NSLayoutConstraint.activate([
                    label.centerXAnchor.constraint(equalTo:textField.leftAnchor, constant: 10),
                    label.topAnchor.constraint(equalTo: textField.topAnchor)
                ])
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
            hintLabel.text = "You have solved the puzzle! 🤩"
            timer.invalidate()
            stats.completed += 1
        }
        else {
            hintLabel.text = "Something is wrong. 😞"
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


