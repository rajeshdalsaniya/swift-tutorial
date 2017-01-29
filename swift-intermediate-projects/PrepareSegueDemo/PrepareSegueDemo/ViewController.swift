//
//  ViewController.swift
//  PrepareSegueDemo
//
//  Created by Rajesh Dalsaniya on 29/01/17.
//  Copyright © 2017 Rajesh Dalsaniya. All rights reserved.
//  Website www.rajeshdalsaniya.com
//

// Notifies the view controller that a segue is about to be performed.

/*
 * https://developer.apple.com/reference/uikit/uiviewcontroller/1621490-prepare
 * https://developer.apple.com/reference/uikit/uiviewcontroller/1621413-performsegue
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
    
    @IBAction func showName(_ sender: UIButton) {
        
        performSegue(withIdentifier: "showName", sender: self)
        
    }
    
    @IBAction func showNumber(_ sender: UIButton) {
        performSegue(withIdentifier: "showNumber", sender: self)
    }
    
    // Prepare Segue before performing it
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showName" {
            
            let controller = segue.destination as! NameViewController
            controller.name = "Raj Patel"
            
        } else if segue.identifier == "showNumber" {
            
            let controller = segue.destination as! NumberViewController
            controller.number = randomNumber()
        }
    }
    
    
    // MARK: Action Random Number Generator Function
    fileprivate func randomNumber() -> Int {
        
        let randomValue = 1 + arc4random()
        
        return Int(randomValue)
    }
    
}

