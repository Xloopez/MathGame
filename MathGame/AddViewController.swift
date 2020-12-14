//
//  AddViewController.swift
//  MathGame
//
//  Created by Nicole Lopez feliz on 2020-12-13.
//

import UIKit

class AddViewController: UIViewController {
    
    @IBOutlet weak var label: UILabel!
    
    @IBOutlet weak var equationLabel: UILabel!
    
    @IBOutlet weak var answerLabel: UITextField!
    
    
    
    
    var receivingTitle: String?
    
    var receivingEquationLabel: String?
    
    var answer: Int?
    
    let segueToAnsweView = "segueToAnsweView"

    override func viewDidLoad() {
        super.viewDidLoad()
        
        label.text = receivingTitle
        
        equationLabel.text = receivingEquationLabel
        
    }
    
    @IBAction func answerBtn(_ sender: Any) {
        performSegue(withIdentifier: segueToAnsweView, sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == segueToAnsweView {
            let destinationVC = segue.destination as! AnswerViewController
            
            if correctAnswerLabel(from: answerLabel) == answer {
                destinationVC.receivingAnswerTitle = "CORRECT"
            } else {
                destinationVC.receivingAnswerTitle = "INCORRECT"
            }
            
        }
    }
    
    func correctAnswerLabel(from textField: UITextField) -> Int {
        guard let answer = textField.text,
              let number = Int(answer)
        else {
            return 0
        }
        
        return number
    }
}
