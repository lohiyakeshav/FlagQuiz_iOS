//
//  RecentProgressViewController.swift
//  FlagQuiz
//
//  Created by Batch-2 on 16/04/24.
//

import UIKit

class RecentProgressViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        updateScore()

        // Do any additional setup after loading the view.
    }
    

    
    @IBOutlet weak var finalAmericaScore: UILabel!
    
    @IBOutlet weak var finalAsiaScore: UILabel!
    
    
    @IBOutlet weak var finalEuropeScore: UILabel!
    
    
    @IBOutlet weak var finalAfricaScore: UILabel!
    
    
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        updateScore()
    }
    
    
    
    
    func updateScore(){
        print(recentAmericaScore)
        finalAmericaScore.text = "Score : \(recentAmericaScore)"
        finalAsiaScore.text = "Score : \(recentAsiaScore)"
        finalEuropeScore.text = "Score : \(recentEuropeScore)"
        finalAfricaScore.text = "Score : \(recentAfricaScore)"
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
