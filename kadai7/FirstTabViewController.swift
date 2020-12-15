//
//  FirstTabViewController.swift
//  kadai7
//
//  Created by 坂本龍哉 on 2020/12/15.
//

import UIKit

class FirstTabViewController: UIViewController {
    @IBOutlet var firstTextField1: UITextField!
    @IBOutlet var firstTextField2: UITextField!
    @IBOutlet var answerLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func calculationButton(_ sender: Any) {
        calculate()
    }
    
    func calculate() {
        let number1 = Int(firstTextField1.text!) ?? 0
        
        let number2 = Int(firstTextField2.text!) ?? 0
        
        let answer = number1 + number2
        
        answerLabel.text = String(answer)
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
