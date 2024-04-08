//
//  SettingsViewController.swift
//  crosswordApp
//
//  Created by Braeden Lhamon on 4/4/24.
//

import UIKit

class SettingsViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func darkModeSwitch(_ sender: Any) {
        //create a boolean/state where the user opens/plays the app in dark mode
    }
    
    @IBAction func timeSwitch(_ sender: Any) {
        //create a boolean which disables the timer from being measured, could also disable the time from being displayed at puzzle completion/stat page
    }
    
    @IBAction func hintSwitch(_ sender: Any) {
        //create a boolean which disables hints from coming up when a user spends a certain amount of time without inputing any characters
    }
    
    @IBAction func popUpSwitch(_ sender: Any) {
        //create a boolean which disables popups from occuring, providing feedback and/or positive reinforcement
    }
    
    @IBOutlet weak var settingsIntroOL: UILabel!
    
    
    
    
    
    
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
