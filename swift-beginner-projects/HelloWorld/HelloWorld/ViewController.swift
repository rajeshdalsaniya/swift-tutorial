//
//  ViewController.swift
//  Hello World
//
//  Created by Rajesh Dalsaniya on 09/01/17.
//  Copyright © 2017 Rajesh Dalsaniya. All rights reserved.
//  Website www.rajeshdalsaniya.com
//
//

import UIKit

class ViewController: UIViewController {
    
    // MARK: Property
    @IBOutlet weak var displayText: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    // MARK: Action to change label text
    @IBAction func changeLabelText(_ sender: UIButton) {
        
        displayText.text = "Hello World!"
    }
    
}

