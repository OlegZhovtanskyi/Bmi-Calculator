//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Oleg Zhovtanskyi on 06/06/2023.
//

import UIKit

class CalculateViewController: UIViewController {
    var calculatorBrain = CalculatorBrain()
    
    @IBOutlet weak var heightValueLabel: UILabel!
    @IBOutlet weak var weightValueLabel: UILabel!
    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var weightSlider: UISlider!
    
    
    @IBAction func heightValueChange(_ sender: UISlider) {
        heightValueLabel.text = String(round(sender.value * 100) / 100) + " m"
    }
    @IBAction func weightValueChange(_ sender: UISlider) {
        weightValueLabel.text =  String(Int(sender.value)) + " kg"
    }

    @IBAction func calculatePressed(_ sender: UIButton) {
        calculatorBrain.calculateBmi(height: heightSlider.value, weight: weightSlider.value)
        performSegue(withIdentifier: "goToResult", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResult" {
            let destinationVC = segue.destination as! ResultViewController
            destinationVC.bmiValue = calculatorBrain.getBmiValue()
            destinationVC.advice = calculatorBrain.getAdvice()
            destinationVC.color = calculatorBrain.getColor()
        }
    }
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
}

