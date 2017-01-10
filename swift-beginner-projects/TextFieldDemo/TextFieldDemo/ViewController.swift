//
//  ViewController.swift
//  TextFieldDemo
//
//  Created by Rajesh Dalsaniya on 10/01/17.
//  Copyright © 2017 Rajesh Dalsaniya. All rights reserved.
//  Website www.rajeshdalsaniya.com
//

/*
A UITextField object displays an editable text area in your interface. You use text fields to gather text-based input from the user using the onscreen keyboard. The keyboard is configurable for many different types of input such as plain text, emails, numbers, and so on. Text fields use the target-action mechanism and a delegate object to report changes made during the course of editing.
 */

// More info: https://developer.apple.com/reference/uikit/uitextfield
import UIKit

class ViewController: UIViewController {

    // MARK: Properties
    @IBOutlet weak var displayText: UILabel!
    @IBOutlet weak var textInput: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: Action
    @IBAction func showText(_ sender: UIButton) {
        
        displayText.text = textInput.text
        
    }

}

