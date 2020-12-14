//
//  ViewController.swift
//  MathGame
//
//  Created by Nicole Lopez feliz on 2020-12-13.
//

import UIKit

class ViewController: UIViewController {
    
    var segueIdentifier = ""
    
    var numberA = Int.random(in: 1..<100)
    
    var numberB = Int.random(in: 1..<100)
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func addBtn(_ sender: Any) {
        segueIdentifier = "segueToAdd"
        performSegue(withIdentifier: segueIdentifier, sender: self)
    }
    
    @IBAction func subBtn(_ sender: Any) {
        segueIdentifier = "segueToSubtract"
        performSegue(withIdentifier: segueIdentifier, sender: self)
    }
    
    @IBAction func multipyBtn(_ sender: Any) {
        segueIdentifier = "segueToMultiply"
        performSegue(withIdentifier: segueIdentifier, sender: self)
    }
    
    
    @IBAction func divideBtn(_ sender: Any) {
        segueIdentifier = "segueToDivide"
        performSegue(withIdentifier: segueIdentifier, sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "segueToAdd" {
            let destinationVC = segue.destination as! AddViewController
            
            destinationVC.receivingTitle = "Addition"
            
            destinationVC.receivingEquationLabel = "\(numberA) + \(numberB)"
            
            destinationVC.answer = numberA + numberB
            
        } else if segue.identifier == "segueToSubtract" {
            let destinationVC = segue.destination as! AddViewController
            
            destinationVC.receivingTitle = "Subtraction"
            
            destinationVC.receivingEquationLabel = "\(numberA) - \(numberB)"
            
            destinationVC.answer = numberA - numberB
            
        } else if segue.identifier == "segueToMultiply" {
            let destinationVC = segue.destination as! AddViewController
            
            destinationVC.receivingTitle = "Multiply"
            
            destinationVC.receivingEquationLabel = "\(numberA) * \(numberB)"
            
            destinationVC.answer = numberA * numberB
            
        } else if segue.identifier == "segueToDivide" {
            let destinationVC = segue.destination as! AddViewController
            
            destinationVC.receivingTitle = "Divide"
            
            destinationVC.receivingEquationLabel = "\(numberA) / \(numberB)"
            
            destinationVC.answer = numberA / numberB
        }
    }
    
}

