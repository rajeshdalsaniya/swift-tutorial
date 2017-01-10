//
//  ViewController.swift
//  SwitchDemo
//
//  Created by Rajesh Dalsaniya on 10/01/17.
//  Copyright © 2017 Rajesh Dalsaniya. All rights reserved.
//  Website www.rajeshdalsaniya.com
//

/*
You use the UISwitch class to create and manage the On/Off buttons used, for example, in the Settings app for options such as Airplane Mode and Bluetooth. These objects are known as switches.
 */

// More info: https://developer.apple.com/reference/uikit/uiswitch


import UIKit

class ViewController: UIViewController {
    
    // MARK: Properties
    @IBOutlet weak var displaySwitchStatus: UILabel!
    @IBOutlet weak var `switch`: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK: Action
    @IBAction func switchStatus(_ sender: Any) {
        
        switch self.switch.isOn {
        case true:
            displaySwitchStatus.text = "Switch is On"
            displaySwitchStatus.textColor = UIColor.green
            
        case false:
            displaySwitchStatus.text = "Switch is Off"
            displaySwitchStatus.textColor = UIColor.red
        }
    }
    
}

