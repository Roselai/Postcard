//
//  ViewController.swift
//  Postcard
//
//  Created by Shukti Shaikh on 7/26/15.
//  Copyright (c) 2015 Shukti Azad. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    //Connecting storyboard elements
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var enterNameTextField: UITextField!
    @IBOutlet weak var enterMessageTextField: UITextField!
    @IBOutlet weak var mailButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func sendMailButtonPressed(sender: UIButton) {
        //Code will execute when button pressed
        
        nameLabel.hidden = false
        nameLabel.text = enterNameTextField.text
        nameLabel.textColor = UIColor.blueColor()
        
        messageLabel.hidden = false
        messageLabel.text = enterMessageTextField.text
        messageLabel.textColor = UIColor.redColor()
        
        enterMessageTextField.text = ""
        enterNameTextField.text = ""
        //hide keyboard
        enterMessageTextField.resignFirstResponder()
        enterNameTextField.resignFirstResponder()
        
        //change the button text
        mailButton.setTitle("Mail Sent", forState: UIControlState.Normal)
    }
   

}

