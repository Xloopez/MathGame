//
//  AnswerViewController.swift
//  MathGame
//
//  Created by Nicole Lopez feliz on 2020-12-14.
//

import UIKit

class AnswerViewController: UIViewController {
    
    @IBOutlet weak var answerLabel: UILabel!
    
    @IBOutlet weak var nextOrRetrybtn: UIButton!
    
    let segueBackToMenu = "segueBackToMenu"
    
    let segueCorrectAnswer = "segueCorrectAnswer"
    
    var receivingAnswerTitle: String?
    
    var correctOrIncorrectStr = ""

    override func viewDidLoad() {
        super.viewDidLoad()
        
        correctOrIncorrectStr = correctOrIncorrectLabel()
        
    }
    
    @IBAction func nextOrRetryBtn(_ sender: Any) {
        if correctOrIncorrectStr == "correct" {
            performSegue(withIdentifier: segueCorrectAnswer, sender: self)
        } else {
            print("Retry segue")
        }
        
    }
    
    @IBAction func backToMenuBtn(_ sender: Any) {
        performSegue(withIdentifier: segueBackToMenu, sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == segueBackToMenu {
            let destinationVC = segue.destination as! ViewController
            
            UIView.appearance().backgroundColor = UIColor.white
            
        } else if segue.identifier == segueCorrectAnswer {
            let destinationVC = segue.destination as! AddViewController
            
            UIView.appearance().backgroundColor = UIColor.white
            
        }
    }
    
    func correctOrIncorrectLabel () -> String{
        if receivingAnswerTitle == "CORRECT" {
            answerLabel.text = receivingAnswerTitle
            answerLabel.backgroundColor = UIColor.systemGreen
            nextOrRetrybtn.setTitle("NEXT", for: .normal)
            //nextOrRetrybtn.tintColor = UIColor.systemGreen
            UIView.appearance().backgroundColor = UIColor.systemGreen
            return "correct"
            
        } else if receivingAnswerTitle == "INCORRECT" {
            answerLabel.text = receivingAnswerTitle
            answerLabel.backgroundColor = UIColor.systemRed
            nextOrRetrybtn.setTitle("RETRY", for: .normal)
            //nextOrRetrybtn.tintColor = UIColor.systemRed
            UIView.appearance().backgroundColor = UIColor.systemRed
            return "incorrect"
        }
        return ""
    }

}
