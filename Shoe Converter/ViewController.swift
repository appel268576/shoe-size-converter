//
//  ViewController.swift
//  Shoe Converter
//
//  Created by Arno Smit on 05/01/15.
//  Copyright (c) 2015 Namib Lost in Sweden. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var mensShoeSizeTextField: UITextField!
    @IBOutlet weak var mensShoeSizeConvertedLabel: UILabel!

    
    @IBOutlet weak var womensShoeSizeTextField: UITextField!
    @IBOutlet weak var womensShoeSizeConvertedLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func convertButtonPressed(sender: UIButton) {
        // convert to integer
        let sizeFromTextField = mensShoeSizeTextField.text.toInt()!
        
        // set conversion constant, insert to label and show it
        let conversionConstant = 30
        mensShoeSizeConvertedLabel.hidden = false
        mensShoeSizeConvertedLabel.text = "\(sizeFromTextField + conversionConstant)" + " in European shoe size"
    }

    
    @IBAction func convertWomensShoeSizeButtonPressed(sender: UIButton) {
        let sizeFromTextField = Double((womensShoeSizeTextField.text as NSString).doubleValue)
        
        // set conversion constant and insert to label and show it
        let conversionConstant = 30.5
        womensShoeSizeConvertedLabel.hidden = false
        womensShoeSizeConvertedLabel.text = "\(sizeFromTextField + conversionConstant)" + " in European shoe size"
    }
}

