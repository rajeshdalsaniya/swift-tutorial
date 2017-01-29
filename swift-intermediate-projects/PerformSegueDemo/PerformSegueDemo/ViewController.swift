//
//  ViewController.swift
//  PerformSegueDemo
//
//  Created by Rajesh Dalsaniya on 29/01/17.
//  Copyright © 2017 Rajesh Dalsaniya. All rights reserved.
// Website www.rajeshdalsaniya.com
//

/*
 Initiates the segue with the specified identifier from the current view controller's storyboard file. 
 */

// https://developer.apple.com/reference/uikit/uiviewcontroller/1621413-performsegue

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
    
    // MARK: Action performed when user click on button
    @IBAction func showView(_ sender: UIButton) {
        
        self.performSegue(withIdentifier: "showView", sender: self)
        
    }

}

