//
//  EasyPuzzleViewController.swift
//  crosswordApp
//
//  Created by Rusty Lasiter on 4/10/24.
//

import UIKit

class EasyPuzzleViewController: UIViewController {
    
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
    }
    
    @IBAction func A1Changed(_ sender: UITextField) {
    }
    
    @IBAction func A2Changed(_ sender: Any) {
    }
    
    @IBAction func A3Changed(_ sender: Any) {
    }
    
    @IBAction func A4Changed(_ sender: Any) {
    }
    
    @IBAction func A5Changed(_ sender: Any) {
    }
    
    @IBAction func B1Changed(_ sender: UITextField) {
    }
    
    @IBAction func B2Changed(_ sender: UITextField) {
    }
    
    @IBAction func B3Changed(_ sender: UITextField) {
    }
    
    @IBAction func B4Changed(_ sender: UITextField) {
    }
    
    @IBAction func B5Changed(_ sender: UITextField) {
    }
    
    @IBAction func C1Changed(_ sender: UITextField) {
    }
    
    @IBAction func C2Changed(_ sender: UITextField) {
    }
    
    @IBAction func C3Changed(_ sender: Any) {
    }
    
    @IBAction func C4Changed(_ sender: UITextField) {
    }
    
    @IBAction func C5Changed(_ sender: UITextField) {
    }
    
    @IBAction func D1Changed(_ sender: Any) {
    }
    
    @IBAction func D2Changed(_ sender: UITextField) {
    }
    
    @IBAction func D3Changed(_ sender: UITextField) {
    }
    
    @IBAction func E1Changed(_ sender: UITextField) {
    }
    
    @IBAction func E2Changed(_ sender: UITextField) {
    }
    
    @IBAction func E3Changed(_ sender: UITextField) {
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


