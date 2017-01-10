//
//  ViewController.swift
//  LabelDemo
//
//  Created by Rajesh Dalsaniya on 10/01/17.
//  Copyright © 2017 Rajesh Dalsaniya. All rights reserved.
//  Website www.rajeshdalsaniya.com
//

/*
    A view that displays one or more lines of read-only text, often used in conjunction with controls to describe their intended purpose.
 */

// More info: https://developer.apple.com/reference/uikit/uilabel

import UIKit

class ViewController: UIViewController {

    // MARK: property to reference storyboard label
    @IBOutlet weak var label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    // MARK: Action for changing label text
    @IBAction func changeLabelTest(_ sender: UIButton) {
        label.text = "Label Text Changed"
    }

}

