//
//  ViewController.swift
//  ButtonDemo
//
//  Created by Rajesh Dalsaniya on 10/01/17.
//  Copyright © 2017 Rajesh Dalsaniya. All rights reserved.
//  Website www.rajeshdalsaniya.com
//

/*
 A UIButton object is a view that executes your custom code in response to user interactions.
 */

// More info: https://developer.apple.com/reference/uikit/uibutton



import UIKit

class ViewController: UIViewController {
    
    // MARK: Properties
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
    
    // MARK: Actions - Change label text and reset it
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

