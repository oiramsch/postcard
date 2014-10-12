//
//  ViewController.swift
//  Postcard
//
//  Created by Mario Schmelzer on 14.09.14.
//  Copyright (c) 2014 Mario Schmelzer. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var messageLabel: UILabel!
    
    @IBOutlet weak var enterNameTextField: UITextField!
    
    @IBOutlet weak var enterAMessageTextField: UITextField!
    
    @IBOutlet weak var mailButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func sendMailButtonPressed(sender: AnyObject) {
        messageLabel.hidden = false
        messageLabel.text = enterAMessageTextField.text
        messageLabel.textColor=UIColor.redColor()
        enterAMessageTextField.text = ""
        enterAMessageTextField.resignFirstResponder()
        mailButton.setTitle("Mail sent", forState: UIControlState.Normal)
    }

}

