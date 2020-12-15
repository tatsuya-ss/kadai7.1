//
//  SecondTabViewController.swift
//  kadai7
//
//  Created by 坂本龍哉 on 2020/12/15.
//

import UIKit

class SecondTabViewController: UIViewController {
    @IBOutlet var secondTextField1: UITextField!
    @IBOutlet var secondTextField2: UITextField!
    @IBOutlet var answerLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        secondTextField1.keyboardType = .numberPad
        secondTextField2.keyboardType = .numberPad

    }
    
    @IBAction func calculateButton(_ sender: Any) {
        calculate()
    }
    
    func calculate() {
        let number1 = Int(secondTextField1.text!) ?? 0
        let number2 = Int(secondTextField2.text!) ?? 0
        let answer = number1 - number2
        answerLabel.text = String(answer)
        secondTextField1.resignFirstResponder()
        secondTextField2.resignFirstResponder()
    }
}
