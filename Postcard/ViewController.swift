//
//  ViewController.swift
//  Postcard
//
//  Created by Kirill Balchenkoff on 5/19/15.
//  Copyright (c) 2015 llooff. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var messageLebel: UILabel!
    
    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var enterNameTextField: UITextField!
    
    @IBOutlet weak var enterMessageTextField: UITextField!
    
    @IBOutlet weak var MailButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func sendMailButtonPressed(sender: UIButton) {
        // addtint a comment here to test commits
        
        messageLebel.hidden = false
        messageLebel.text = enterMessageTextField.text
        messageLebel.textColor = UIColor.redColor()
        
        nameLabel.hidden = false
        nameLabel.text = enterNameTextField.text
        nameLabel.textColor = UIColor.blueColor()
        
        enterNameTextField.text = ""
        enterMessageTextField.text = ""
        enterMessageTextField.resignFirstResponder()
        
        MailButton.setTitle("Mail Sent", forState: UIControlState.Normal)
        
        
        
        
    }
}

