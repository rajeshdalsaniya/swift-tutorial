//
//  FirstViewController.swift
//  PresentViewControllerDemo
//
//  Created by Rajesh Dalsaniya on 29/01/17.
//  Copyright © 2017 Rajesh Dalsaniya. All rights reserved.
//  Website www.rajeshdalsaniya.com

/*
 The UIViewController class provides the infrastructure for managing the views of your iOS apps. A view controller manages a set of views that make up a portion of your app’s user interface. It is responsible for loading and disposing of those views, for managing interactions with those views, and for coordinating responses with any appropriate data objects. View controllers also coordinate their efforts with other controller objects—including other view controllers—and help manage your app’s overall interface.
 */

// https://developer.apple.com/reference/uikit/uistoryboard/1616214-instantiateviewcontroller
// https://developer.apple.com/reference/uikit/uiviewcontroller/1621380-present

import UIKit

class FirstViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    // MARK: Action for presenting second view
    @IBAction func showSecondView(_ sender: UIButton) {
        // Get the SecondViewController
        let secondView: SecondViewController
        secondView = storyboard?.instantiateViewController(withIdentifier: "secondView") as! SecondViewController
        
        // Present the view Controller
        present(secondView, animated: true, completion: { print("Second View Controller Called") })
        
    }


}

