//
//  ViewController.swift
//  TextFieldDemo
//
//  Created by Rajesh Dalsaniya on 10/01/17.
//  Copyright © 2017 Rajesh Dalsaniya. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

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

    @IBAction func showText(_ sender: UIButton) {
        
        displayText.text = textInput.text
        
    }

}

