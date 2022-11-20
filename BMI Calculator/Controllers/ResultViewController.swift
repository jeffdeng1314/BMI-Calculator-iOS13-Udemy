//
//  ResultViewController.swift
//  BMI Calculator
//
//  Created by Jeff Deng on 11/19/22.
//  Copyright © 2022 Angela Yu. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {

    @IBOutlet weak var bmiLabel: UILabel!
    
    @IBOutlet weak var adviceLabel: UILabel!
    
    var bmiValue: String?
    var advice: String?
    var color: UIColor?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        bmiLabel.text = bmiValue
        adviceLabel.text = advice
        view.backgroundColor = color
    }

    @IBAction func recalculate(_ sender: UIButton) {
        dismiss(animated: true)
    }
}
