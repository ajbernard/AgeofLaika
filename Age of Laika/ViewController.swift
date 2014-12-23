//
//  ViewController.swift
//  Age of Laika
//
//  Created by Arun J Bernard on 12/23/14.
//  Copyright (c) 2014 Home. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var ageInputText: UITextField!
    
    @IBOutlet weak var outputLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func convertAgeToDogsAge(sender: UIButton) {

        //Getting the input, using optionals i.e toInt() and unwrapping i.e (!) in single line:
        var ageInputInt:Int = ageInputText.text.toInt()!
        
		//conversion constant will determine to get the human years:
        let conversionConstant:Int = 7
        
		//Multiply given age with conversion constant to get the age of a dog in human years:
        outputLabel.text = "\(ageInputInt * conversionConstant) in human years"
        
		//Show the hidden label
        outputLabel.hidden = false
        
		//Hide the keyboard (numberpad):
        ageInputText.resignFirstResponder()
    }

}

