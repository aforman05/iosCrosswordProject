//
//  SettingsViewController.swift
//  crosswordApp
//
//  Created by Braeden Lhamon on 4/4/24.
//

import UIKit

class SettingsViewController: UIViewController {

    //var darkModeCond = false
    //var popCond = true
    //var hintCond = true
    
    let appDelegate = UIApplication.shared.delegate as! AppDelegate
    
    //initialize the array
    //I'm setting up the array to be one clue per word, going in order (across and down wise) as they are listed in the sample images/answers. Prioritize
    let hintArrOne: [String: String] = ["1 Across" : "This word is the first five letters of the main, large red ball in Quiditch", "1 Down" : "The same as 1/4, Abbr.", "2 Down" : "This is two words, the first is often a buffer/filler word, the second being used when confused", "3 Down" : "The sun does this, also includes the name of a romantic flower", "4 Down" : "Not USPS but...", "5 Down" : "Another word for a tax", "6 Across" : "Uno, Dos..., in english", "7 Across" : "It's real small and adjacent to connecticut", "8 Across" : "similiar in looks and meaning to utilize", "9 Across" : "Also the prefix for something 6-sided"]
    let hintArrTwo: [String: String] = ["1 Across":"___ and cons", "1 Down" : "The opposite of this is 'phobe'", "2 Down":"Leaning tower of pisa...","3 Down":"___sy daisy!","4 Across" : "I don't know how to make this more clear.", "4 Down" : "Could be a head____ or belly____", "5 Down" : "A informal word for eating/food", "6 Across" : "A species of monkey", "7 Across" : "If your pants rip, there's a ____ in them.", "8 Across" : "Pronounced 'u'"]
    let hintArrThree: [String:String] = ["1 Across":"Opposite of good", "1 Down" : "More examples would be fried pickles, Mozzarella sticks, artichoke dip. What place do you find these at?", "2 Down":"She was in Ghosted with Chris Hemsworth","3 Down":"This person likes to ask you questions and then shove instruments in your mouth.","4 Across" : "This is a homophone (similar sounding) with 'pain'", "4 Down" : "Someone who flies a plane", "5 Down" : "When you make the bed, you might wash the _____s", "6 Across" : "Aggressive Fish Type", "6 Down" : "These are often located on the back of bathroom doors...", "7 Down" : "First three letters of this word", "8 Across" : "A popular christmas movie", "9 Across" : "'T Minus ___ Seconds!", "10 Across" : "'It's a bag of _______", "11 Down" : "Yin and Yang comes from this belief system", "12 Across" : "Another clue could be 'What is heated bread?'", "13 Across" : "An abbreviation of 'Department of Transportation'"]
    
    //how to keep dark mode enabled across all viewcontrollers (Could be a viewDidLoad condition)
    @IBOutlet weak var darkModeSwitchOL: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        darkModeSwitchOL.isOn=appDelegate.darkModeCond
        hintsSwitchOL.isOn=appDelegate.hintCond
        timerSwitchOL.isOn=appDelegate.timerCond
        popUpsSwitchOL.isOn=appDelegate.popCond
    }
    
    
    @IBAction func darkModeSwitch(_ sender: Any) {
        //create a boolean/state where the user opens/plays the app in dark mode
        if(darkModeSwitchOL.isOn) {
            appDelegate.darkModeCond.toggle()
            navigationController?.overrideUserInterfaceStyle = .dark
            if(popUpsSwitchOL.isOn) {
                self.view.makeToast("You've enabled dark mode!",duration: 2.0, position: .bottom)
            }
        }
        if(!darkModeSwitchOL.isOn) {
            appDelegate.darkModeCond.toggle()
            navigationController?.overrideUserInterfaceStyle = .light
            if(popUpsSwitchOL.isOn) {
                self.view.makeToast("You've disabled dark mode 😢",duration: 2.0, position: .bottom)
            }
        }
    }
    
    @IBAction func timeSwitch(_ sender: Any) {
        //create a boolean which disables the timer from being measured, could also disable the time from being displayed at puzzle completion/stat page
        if(timerSwitchOL.isOn) {
            appDelegate.timerCond.toggle()
            if(popUpsSwitchOL.isOn) {
                self.view.makeToast("You've enabled the timer!",duration: 2.0, position: .bottom)
            }
        }
        if(!timerSwitchOL.isOn) {
            appDelegate.timerCond.toggle()
            if(popUpsSwitchOL.isOn) {
                self.view.makeToast("You've disabled the timer 😢",duration: 2.0, position: .bottom)
            }
        }
    }
    
    @IBAction func hintSwitch(_ sender: Any) {
        //create a boolean which disables hints from coming up when a user spends a certain amount of time without inputing any characters
        if(hintsSwitchOL.isOn) {
            appDelegate.hintCond.toggle()
            if(popUpsSwitchOL.isOn) {
                self.view.makeToast("You've enabled hints!",duration: 2.0, position: .bottom)
            }
        }
        if(!hintsSwitchOL.isOn) {
            appDelegate.hintCond.toggle()
            if(popUpsSwitchOL.isOn) {
                self.view.makeToast("You've disabled hints 😢",duration: 2.0, position: .bottom)
            }
        }
    }
    
    @IBAction func popUpSwitch(_ sender: Any) {
        //create a boolean which disables popups from occuring, providing feedback and/or positive reinforcement
        //popCond.toggle()
        if(popUpsSwitchOL.isOn) {
            appDelegate.popCond.toggle()
            self.view.makeToast("You've enabled pop up messages!",duration: 2.0, position: .bottom)
        }
        if(!popUpsSwitchOL.isOn) {
            appDelegate.popCond.toggle()
            self.view.makeToast("You've disabled pop up messages 😢",duration: 2.0, position: .bottom)
        }
    }
    
    @IBOutlet weak var settingsIntroOL: UILabel!
    
    @IBOutlet weak var timerSwitchOL: UISwitch!
    
    @IBOutlet weak var hintsSwitchOL: UISwitch!
    
    @IBOutlet weak var popUpsSwitchOL: UISwitch!
    
    
    
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
