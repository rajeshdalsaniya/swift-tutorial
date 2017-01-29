//
//  ViewController.swift
//  AlertDemo
//
//  Created by Rajesh Dalsaniya on 29/01/17.
//  Copyright © 2017 Rajesh Dalsaniya. All rights reserved.
//  Website www.rajeshdalsaniya.com
//

/*
A UIAlertController object displays an alert message to the user. This class replaces the UIActionSheet and UIAlertView classes for displaying alerts. After configuring the alert controller with the actions and style you want, present it using the present(_:animated:completion:) method. https://developer.apple.com/reference/uikit/uialertcontroller
 */

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func showAlert(_ sender: UIButton) {
        
        //MARK: Alert Controller Object
        let alertController = UIAlertController()
        // Alert Title
        alertController.title = "Alert Title"
        // Alert Message Info
        alertController.message = "This is alert Message"
        // MARK: Alert Action called when user clicked on Ok Button
        let okButton = UIAlertAction(title: "Ok", style: .default) { action in self.dismiss(animated: true, completion: nil) }
        // Add action to alert
        alertController.addAction(okButton)
        // Display alert when user called showAlert Action
        self.present(alertController, animated: true, completion: nil)
    }


}

