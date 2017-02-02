//
//  ViewController.swift
//  NavigationControllerDemo
//
//  Created by Rajesh Dalsaniya on 02/02/17.
//  Copyright © 2017 Rajesh Dalsaniya. All rights reserved.
//  Website www.rajeshdalsaniya.com
//

/*
 The screens presented by a navigation interface typically mimic the hierarchical organization of your data. At each level of the hierarchy, you provide an appropriate screen (managed by a custom view controller) to display the content at that level. Figure 1 shows an example of the navigation interface presented by the Settings application in iOS Simulator. The first screen presents the user with the list of applications that contain preferences. Selecting an application reveals individual settings and groups of settings for that application. Selecting a group yields more settings and so on. For all but the root view, the navigation controller provides a back button to allow the user to move back up the hierarchy.

 */

// https://developer.apple.com/reference/uikit/uinavigationcontroller

// Note: Navigation done without coding. Kindly check Main Storyboard for demo. Below only one method which used to start over (go back to root view)

import UIKit

class ViewController: UIViewController {
    

    // MARK: Action when user click on start over button root view controller will be displayed
    @IBAction func startOver(_ sender: UIButton) {
        
        if let navigationController = navigationController {
            navigationController.popToRootViewController(animated: true)
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

