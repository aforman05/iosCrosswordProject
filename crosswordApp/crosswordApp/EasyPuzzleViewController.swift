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
    
    @IBAction func hintBtnPressed(_ sender: UIButton) {
        stats.hints += 1
    }
    
    @IBAction func checkBtnClicked(_ sender: Any) {
        
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


