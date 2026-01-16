//
//  ResultViewController.swift
//  BMI -CALCULATOR
//
//  Created by MAC on 16/01/2026.
//

import UIKit

class ResultViewController: UIViewController {
    
    var bmiValue : String?
    
    @IBOutlet weak var bmiLabel: UILabel!
    @IBOutlet weak var adviceLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        bmiLabel.text = bmiValue
    }
    
    @IBAction func recalculatePressed(_ sender: UIButton) {
        self.dismiss(animated: true)
    }
    

}
