//
//  ViewController.swift
//  ActivityViewDemo
//
//  Created by Rajesh Dalsaniya on 29/01/17.
//  Copyright © 2017 Rajesh Dalsaniya. All rights reserved.
//  Website www.rajeshdalsaniya.com
//

/*
 The UIActivityViewController class is a standard view controller that you can use to offer various services from your application. The system provides several standard services, such as copying items to the pasteboard, posting content to social media sites, sending items via email or SMS, and more. Apps can also define custom services.   https://developer.apple.com/reference/uikit/uiactivityviewcontroller
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

    @IBAction func showActivity(_ sender: UIButton) {
        
        //MARK: Properties Holding String and Image
        let name = "Rajesh Dalsaniya"
        let image = UIImage()
        // UIActivityViewController Object
        let controller = UIActivityViewController(activityItems: [name,image], applicationActivities: nil)
        // Display Activity View Controller
        self.present(controller, animated: true, completion: nil)
    }

}

