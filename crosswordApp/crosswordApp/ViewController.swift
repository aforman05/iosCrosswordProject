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
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
            // get the segue
            let transition = segue.identifier
            
            // if segue to stats page
            if transition == "statsSegue" {
                let destination = segue.destination as! StatsViewController
                destination.name = nameOL.text ?? ""
            }
            if transition == "settingsSegue" {
                let destination = segue.destination as! SettingsViewController
                destination.name = nameOL.text ?? ""
            }
        }
    }
    


