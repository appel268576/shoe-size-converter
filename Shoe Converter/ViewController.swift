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
        let sizeFromTextField = mensShoeSizeTextField.text
        let numberFromTextField = sizeFromTextField.toInt()
        var integerFromTextField = numberFromTextField!
        
        // set conversion constant and apply to initial value
        let conversionConstant = 30
        integerFromTextField += conversionConstant
        
        // unhide the label and insert new number
        mensShoeSizeConvertedLabel.hidden = false
        let stringWithUpdatedShoeSize = "\(integerFromTextField)"
        mensShoeSizeConvertedLabel.text = stringWithUpdatedShoeSize
    }

}

