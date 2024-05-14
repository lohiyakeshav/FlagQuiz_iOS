//
//  ViewController.swift
//  FlagQuiz
//
//  Created by Batch-2 on 16/04/24.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
       
    }

    
    
    var continentSelected : String = ""
    
    
    @IBOutlet var selectedContinent: [UIButton]!
    
    
    @IBAction func continentNamePressed(_ sender: UIButton) {
        
        if sender.tag == 0{
            continentSelected = "Asia"
            continentImage = continentSelected
        }else if sender.tag == 1{
            continentSelected = "America"
            continentImage = continentSelected
        }else if sender.tag == 2{
            continentSelected = "Europe"
            continentImage = continentSelected
        }else if  sender.tag == 3{
            continentSelected = "Africa"
            continentImage = continentSelected
        }
        
        performSegue(withIdentifier: "countrySegue", sender: nil)
    }
    
    
    
}



