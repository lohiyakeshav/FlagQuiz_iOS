//
//  AmericaViewController.swift
//  FlagQuiz
//
//  Created by Batch-2 on 16/04/24.
//

import UIKit

class CountryViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        continentImageOnScreen.image = UIImage(named: "\(continentImage)")
        navigationItem.title=continentImage
        // Do any additional setup after loading the view.
    }
    
    
    
    
   
    @IBOutlet weak var continentImageOnScreen: UIImageView!
    
    

    @IBAction func startQuizPressed(_ sender: Any) {
        
        performSegue(withIdentifier: "questionSegue", sender: nil)
    }
    
    
    
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
