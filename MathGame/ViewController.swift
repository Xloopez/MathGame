//
//  ViewController.swift
//  MathGame
//
//  Created by Nicole Lopez feliz on 2020-12-13.
//

import UIKit

class ViewController: UIViewController {
    
    let segueToAdd = "segueToAdd"
    
    var numberA = Int.random(in: 1..<100)
    
    var numberB = Int.random(in: 1..<100)
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        
    }
    
    @IBAction func addBtn(_ sender: Any) {
        performSegue(withIdentifier: segueToAdd, sender: self)
        
        //Ska finnas addition titel
        
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == segueToAdd {
            let destinationVC = segue.destination as! AddViewController
            
            destinationVC.receivingTitle = "Addition"
            
            destinationVC.receivingEquationLabel = "\(numberA) + \(numberB)"
            
            destinationVC.answer = numberA + numberB
            
        }
        
    }
    
    func addInt () {
        numberA = Int.random(in: 1..<100)
        numberB = Int.random(in: 1..<100)
    }
    

}

