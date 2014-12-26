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

    @IBAction func convertToDogYears(sender: UIButton) {

        // Getting the input, using optionals i.e toInt() and unwrapping i.e (!) in single line:
        //var ageInputInt:Int = ageInputText.text.toInt()!
        
        var ageInputInt:Int
        var ageInput = ageInputText.text
        
        //if the input is not nil and not nil when using optionals:
        if ageInput != nil && ageInput.toInt() != nil {
            
            ageInputInt = ageInput.toInt()!
            
            // conversionConstant will determine to get the human years:
            let conversionConstant:Int = 7
            
            // Multiply given age with conversion constant to get the age of a dog in human years:
            outputLabel.text = "\(ageInputInt * conversionConstant) in dog years"
            

        }else {
            outputLabel.text = "Enter a number in human years to get the age of dog"
        }
        
        // Show the hidden label:
        outputLabel.hidden = false
        
        // Hide the keyboard (numberpad):
        ageInputText.resignFirstResponder()
    }

    @IBAction func convertToRealDogYears(sender: UIButton) {
        // Getting the input, using optionals i.e toInt() and unwrapping i.e (!) in single line:
        var ageInputInt:Int = ageInputText.text.toInt()!
        
        // conversionConstant will determine to get the human years:
        var conversionConstant:Double = 4
        var ageInHumanYears: Double
        
        //Each human year equals 10.5 dog years for the first two years, and then 4 dog years for each human year after.
        if(ageInputInt <= 2 ){
            
            //When age is less than or equal to 2:
            conversionConstant = 10.5
            ageInHumanYears = Double(ageInputInt) * conversionConstant
            
        }else{
            
            //subtract 2 because we are adding 21 for first two years:
            ageInHumanYears = 21.0 + Double(ageInputInt - 2) * conversionConstant
        }
        
        // Multiply given age with conversion constant to get the age of a dog in human years:
        outputLabel.text = "\(ageInHumanYears) in dog years"
        
        // Show the hidden label:
        outputLabel.hidden = false
        
        // Hide the keyboard (numberpad):
        ageInputText.resignFirstResponder()
    }
}

