//
//  ViewController.swift
//  Postcard
//
//  Created by John Paul J on 13/11/14.
//  Copyright (c) 2014 John Paul J. All rights reserved.
//

import UIKit

class ViewController: UIViewController {


    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var enterNameTextField: UITextField!
    @IBOutlet weak var enterMessageTextField: UITextField!
    
    @IBOutlet weak var sendMailButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func sendMessageButtonPressed(sender: AnyObject) {
        messageLabel.hidden = false
        messageLabel.text = enterMessageTextField.text
        messageLabel.textColor = UIColor.redColor()
        
        nameLabel.hidden = false
        nameLabel.text = enterNameTextField.text
        nameLabel.textColor = UIColor.blueColor()
        
        enterMessageTextField.text = ""
        enterMessageTextField.resignFirstResponder()
        
        enterNameTextField.text = ""
        enterNameTextField.resignFirstResponder()
        
        sendMailButton.setTitle("Mail Sent", forState: UIControlState.Normal)
    }
    
    func textFieldShouldReturn(textField: UITextField!) -> Bool {
        enterNameTextField.resignFirstResponder()
        enterMessageTextField.resignFirstResponder()
        return true
    }

}

