//
//  SecondViewController.swift
//  PresentViewControllerDemo
//
//  Created by Rajesh Dalsaniya on 29/01/17.
//  Copyright © 2017 Rajesh Dalsaniya. All rights reserved.
//  Website www.rajeshdalsaniya.com

import UIKit

class SecondViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK: Action for showing first view controller
    @IBAction func showFirstView(_ sender: UIButton) {
        // Get the SecondViewController
        let firstView: FirstViewController
        firstView = storyboard?.instantiateViewController(withIdentifier: "firstView") as! FirstViewController
        
        // Present the view Controller
        present(firstView, animated: true, completion: { print("First View Controller Called") })
        
    }
    

    

}
