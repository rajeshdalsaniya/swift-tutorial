//
//  ViewController.swift
//  SliderDemo
//
//  Created by Rajesh Dalsaniya on 10/01/17.
//  Copyright © 2017 Rajesh Dalsaniya. All rights reserved.
//  Website www.rajeshdalsaniya.com
//

/*
 A visual control used to select a single value from a continuous range of values
 */

// More info: https://developer.apple.com/reference/uikit/uislider
import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var displaySliderValue: UILabel!
    @IBOutlet weak var slider: UISlider!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func showSliderValue(_ sender: UISlider) {
        
        displaySliderValue.text = String(self.slider.value)
        
    }


}

