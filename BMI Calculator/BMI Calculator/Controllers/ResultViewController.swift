//
//  ResultViewController.swift
//  BMI Calculator
//
//  Created by Oleg Zhovtanskyi on 06/06/2023.
//

import UIKit

class ResultViewController: UIViewController {
    var bmiValue: String?
    var advice: String?
    var color: UIColor?
    
    @IBOutlet weak var bmiLabel: UILabel!
    @IBOutlet weak var adviceLabel: UILabel!
    
    @IBAction func recalculatePressed(_ sender: UIButton) {
        self.dismiss(animated: true)
    }
    
    override func viewDidLoad() {
        bmiLabel.text = bmiValue
        adviceLabel.text = advice
        view.backgroundColor = color
        super.viewDidLoad()

    }

}
