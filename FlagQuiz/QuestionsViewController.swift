//
//  QuestionsViewController.swift
//  FlagQuiz
//
//  Created by Batch-2 on 16/04/24.
//

import UIKit

class QuestionsViewController: UIViewController {
    
    
    @IBOutlet weak var buttonOne: UIButton!
    
    
    @IBOutlet weak var buttonTwo: UIButton!
    
    
    @IBOutlet weak var buttonThree: UIButton!
    
    
    @IBOutlet weak var buttonFour: UIButton!
    
    
    @IBAction func buttonOnePressed(_ sender: UIButton) {
        let answerOne = buttonOne.titleLabel
        userAnswers.append(answerOne?.text ?? "Default")
        updateUI()
        
    }
    
    @IBAction func buttonTwoPressed(_ sender: UIButton) {
        let answerTwo = buttonTwo.titleLabel
        userAnswers.append(answerTwo?.text ?? "Default")
        updateUI()
    }
    
    
    @IBAction func buttonThreePressed(_ sender: UIButton) {
        let answerThree = buttonThree.titleLabel
        userAnswers.append(answerThree?.text ?? "Default")
        updateUI()
    }
    
    
    @IBAction func buttonFourPressed(_ sender: Any) {
        let answerFour = buttonFour.titleLabel
        userAnswers.append(answerFour?.text ?? "Default")
        updateUI()
    }
    
    
    
    @IBOutlet var buttonsPressed: [UIButton]!
    
    
    @IBAction func buttonsPressedByUser(_ sender: UIButton) {
        
        
        
        
    }
    
    
    
    @IBOutlet weak var flagImage: UIImageView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
        // Do any additional setup after loading the view.
        
    }
    var userAnswers : [String] = []
    var  quizNumber=0
    var userScore = 0
    func updateUI(){
        let options : [Question] = [
            Question(options: ["Mexico", "Argentina","Brazil","Cuba"]),
            Question(options: ["Argentina","Cuba","Brazil","Mexico"]),
            Question(options: ["Cuba", "Canada","Peru","Brazil"]),
            Question(options: ["Brazil", "Argentina","Brazil","Cuba"]),
            Question(options: ["Canada", "Argentina","Brazil","Cuba"]),
            Question(options: ["Anguilla", "Argentina","Brazil","Cuba"]),
            Question(options: ["Guatemala", "Argentina","Brazil","Cuba"]),
            Question(options: ["Peru", "Argentina","Brazil","Cuba"]),
            Question(options: ["UnitedStates", "Argentina","Brazil","Cuba"]),
            Question(options: ["Uruguay", "Argentina","Brazil","Cuba"]),
        ]
        if quizNumber < 10{
            
            flagImage.image = UIImage(named: "\(options[quizNumber].options[0]).jpg")
            buttonOne.setTitle(options[quizNumber].options[0], for: .normal)
            buttonTwo.setTitle(options[quizNumber].options[1], for: .normal)
            buttonThree.setTitle(options[quizNumber].options[2], for: .normal)
            buttonFour.setTitle(options[quizNumber].options[3], for: .normal)
            
        }else{
            
            performSegue(withIdentifier: "resultSegue", sender: nil)
            
        }
        quizNumber += 1
        //print(userAnswers)
    }
    
    
    @IBSegueAction func showResults(_ coder: NSCoder) -> ResultsViewController? {
        return ResultsViewController(coder: coder, responses : userAnswers)
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


