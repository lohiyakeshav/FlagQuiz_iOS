//
//  ResultsViewController.swift
//  FlagQuiz
//
//  Created by Batch-2 on 16/04/24.
//

import UIKit

class ResultsViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        calculateResult()
        quizContinentImage.image = UIImage(named: "\(continentImage)")
        // Do any additional setup after loading the view.
    }
    
    
    @IBOutlet weak var quizContinentImage: UIImageView!
    
    
    @IBOutlet weak var userScoreOfQuiz: UILabel!
    
    var responses : [String]
    
    init(coder: NSCoder, responses: [String]) {
        self.responses = responses
        super.init(coder: coder)!
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    var userScore = 0
    var correctAnswers = ["Mexico", "Argentina", "Cuba", "Brazil", "Canada", "Anguilla","Guatemala","Peru", "UnitedStates","Uruguay"]
    func calculateResult() {
    var  i = 0
        print(responses)
        
        for item in responses {
            if item == correctAnswers[i]{
                userScore += 1
                
            }
            i+=1
        }
        print(userScore)
        
        if continentImage == "Asia"{
            recentAsiaScore = userScore
            userScoreOfQuiz.text = "Score: \(userScore)"
            
            
        }else if continentImage == "America"{
            recentAmericaScore = userScore
            userScoreOfQuiz.text = "Score: \(userScore)"
            
        }else if continentImage == "Africa"{
            recentAfricaScore = userScore
            userScoreOfQuiz.text = "Score: \(userScore)"
            
        }else if continentImage == "Europe"{
            recentEuropeScore = userScore
            userScoreOfQuiz.text = "Score: \(userScore)"
            
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

}
