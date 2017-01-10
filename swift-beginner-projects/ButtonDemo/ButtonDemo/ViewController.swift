//
//  ViewController.swift
//  ButtonDemo
//
//  Created by Rajesh Dalsaniya on 10/01/17.
//  Copyright © 2017 Rajesh Dalsaniya. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var changeButton: UIButton!
    @IBOutlet weak var resetButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        // Disable Reset button by default
        resetButton.isEnabled = false
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func changeText(_ sender: UIButton) {
        label.text = "How are you ?"
        changeButton.isEnabled = false
        resetButton.isEnabled = true
        
    }
    
    @IBAction func resetAll(_ sender: UIButton) {
        label.text = "Hello World!"
        resetButton.isEnabled = false
        changeButton.isEnabled = true
    }

}

