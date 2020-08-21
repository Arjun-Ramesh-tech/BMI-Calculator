//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class CalculateViewController: UIViewController {

    @IBOutlet weak var heightLabelValue: UILabel!
    @IBOutlet weak var weightLabelValue: UILabel!
    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var weightSlider: UISlider!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func heightSliderChanged(_ sender: UISlider) {
        heightLabelValue.text = String(format: "%.2f",heightSlider.value)+"m"
    }
    
    @IBAction func weightSliderChanged(_ sender: UISlider) {
        weightLabelValue.text = String(format: "%.0f",weightSlider.value)+"Kg"

    }
    @IBAction func calculatePressed(_ sender: UIButton) {
        let height = heightSlider.value
        let weight = weightSlider.value
        let bmi = weight / pow(height,2)
        print(bmi)
    }
}

