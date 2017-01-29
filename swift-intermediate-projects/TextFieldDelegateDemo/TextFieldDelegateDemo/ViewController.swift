//
//  ViewController.swift
//  TextFieldDelegateDemo
//
//  Created by Rajesh Dalsaniya on 29/01/17.
//  Copyright © 2017 Rajesh Dalsaniya. All rights reserved.
//  Website www.rajeshdalsaniya.com
//

// NOTE: texview Confirming ITextFieldDelegate Protocol via ColorTextFieldDelegate() Object
// https://developer.apple.com/reference/uikit/uitextfielddelegate

import UIKit

class ViewController: UIViewController {

    // MARK: Outlets
    @IBOutlet weak var textField: UITextField!
    
    // MARK: Properties
    let textColorDelegate = ColorTextFieldDelegate()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        textField.delegate = self.textColorDelegate
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    

}

