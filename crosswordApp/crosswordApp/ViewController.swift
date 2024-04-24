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
        performSegue(withIdentifier: "easySegue", sender: self)

    }
    
    @IBAction func mediumBtn(_ sender: Any) {
        performSegue(withIdentifier: "mediumSegue", sender: self)

        
    }
    @IBAction func hardBtn(_ sender: Any) {
        performSegue(withIdentifier: "hardSegue", sender: self)
            

    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
            // get the segue
            let transition = segue.identifier
            
            // if segue to stats page
            if transition == "statsSegue" {
                let destination = segue.destination as! StatsViewController
                destination.name = nameOL.text ?? ""
            }
            
            // if segue to crossword pages
            if let identifier = segue.identifier {
                switch identifier {
                case "easySegue":
                    if let destination = segue.destination as? EasyPuzzleViewController {
                        destination.name = nameOL.text ?? ""
                    }
                case "mediumSegue":
                    if let destination = segue.destination as? MediumPuzzleViewController {
                        destination.name = nameOL.text ?? ""
                    }
                case "hardSegue":
                    if let destination = segue.destination as? HardPuzzleViewController {
                        destination.name = nameOL.text ?? ""
                    }
                default:
                    break
                }
            }
        }
    }
    


