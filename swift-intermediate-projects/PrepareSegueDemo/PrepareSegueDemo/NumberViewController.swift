//
//  NumberViewController.swift
//  PrepareSegueDemo
//
//  Created by Rajesh Dalsaniya on 29/01/17.
//  Copyright © 2017 Rajesh Dalsaniya. All rights reserved.
//  Website www.rajeshdalsaniya.com
//

import UIKit

class NumberViewController: UIViewController {

    var number: Int?
    @IBOutlet weak var numberLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        numberLabel.text = String(describing: number!)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

   
}
