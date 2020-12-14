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
    
    
    
    
    var receivingAnswerTitle: String?

    override func viewDidLoad() {
        super.viewDidLoad()
        
        correctOrIncorrectLabel()
        
    }
    
    func correctOrIncorrectLabel () {
        if receivingAnswerTitle == "CORRECT" {
            answerLabel.text = receivingAnswerTitle
            answerLabel.backgroundColor = UIColor.systemGreen
            nextOrRetrybtn.setTitle("NEXT", for: .normal)
            
        } else if receivingAnswerTitle == "INCORRECT" {
            answerLabel.text = receivingAnswerTitle
            answerLabel.backgroundColor = UIColor.systemRed
            nextOrRetrybtn.setTitle("RETRY", for: .normal)
            
        }
    }

}
