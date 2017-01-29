//
//  ViewController.swift
//  TextCharacterCountDemo
//
//  Created by Rajesh Dalsaniya on 29/01/17.
//  Copyright © 2017 Rajesh Dalsaniya. All rights reserved.
//  Website www.rajeshdalsaniya.com
//

/*
 *The UITextFieldDelegate protocol defines methods that you use to manage the editing and validation of text in a UITextField object. All of the methods of this protocol are optional.
 */

// https://developer.apple.com/reference/uikit/uitextfielddelegate

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    // MARK: Outlets
    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var charCountLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // hite counter label
        charCountLabel.isHidden = true
        // Textfield delegations
        textField.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //MARK: TextField Delegation Methods (Protocol Confirmation)
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
       
        // Figure out what the new text will be, if we return true
        var newText = textField.text! as NSString
        newText = newText.replacingCharacters(in: range, with: string) as NSString
        
        // hide the label if the newText will be an empty string
        charCountLabel.isHidden = (newText.length == 0)
        
        // Write the length of newText into the label
        charCountLabel.text = String(newText.length)
        
        // returning true gives the text field permission to change its text
        return true

    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }


}

