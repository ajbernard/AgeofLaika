//
//  ViewController.swift
//  Age of Laika
//
//  Created by WPP Administrator on 12/23/14.
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
        
        var ageInputInt:Int = ageInputText.text.toInt()!
        
        let conversionConstant:Int = 7
        
        outputLabel.text = "\(ageInputInt * conversionConstant) in human years"
        
        outputLabel.hidden = false
        
        ageInputText.resignFirstResponder()
    }

}

