//
//  ViewController.swift
//  crosswordApp
//
//  Created by Andrea F on 4/4/24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var nameOL: UITextField!
    
    let appDelegate = UIApplication.shared.delegate as! AppDelegate
    
    
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

    @IBAction func easyBtn(_ sender: Any) {
    }
    
    @IBAction func mediumBtn(_ sender: Any) {
    }
    @IBAction func hardBtn(_ sender: Any) {
    }
}

