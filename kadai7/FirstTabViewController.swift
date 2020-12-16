//
//  FirstTabViewController.swift
//  kadai7
//
//  Created by 坂本龍哉 on 2020/12/15.
//

import UIKit

class FirstTabViewController: UIViewController {
    @IBOutlet private var firstTextField1: UITextField!
    @IBOutlet private var firstTextField2: UITextField!
    @IBOutlet private var answerLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        firstTextField1.keyboardType = .numberPad
        firstTextField2.keyboardType = .numberPad
    }
    
    @IBAction private func calculationButton(_ sender: Any) {
        calculate()
    }
    
    private func calculate() {
        let number1 = Int(firstTextField1.text!) ?? 0
        let number2 = Int(firstTextField2.text!) ?? 0
        let answer = number1 + number2
        answerLabel.text = String(answer)
        firstTextField1.resignFirstResponder()
        firstTextField2.resignFirstResponder()
    }
}
