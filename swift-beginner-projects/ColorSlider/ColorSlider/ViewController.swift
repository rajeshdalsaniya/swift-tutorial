//
//  ViewController.swift
//  ColorSlider
//
//  Created by Rajesh Dalsaniya on 09/01/17.
//  Copyright © 2017 Rajesh Dalsaniya. All rights reserved.
//  Website www.rajeshdalsaniya.com
//


import UIKit

class ViewController: UIViewController {
    
    // MARK: Color Slider Properties
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    @IBOutlet weak var colorView: UIView!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    // MARK: Action - change color based on slider value passed
    @IBAction func changeColor() {
        
        colorView.backgroundColor = UIColor(red: CGFloat(self.redSlider.value), green: CGFloat(self.greenSlider.value), blue: CGFloat(self.blueSlider.value), alpha: 1)
        
    }
    
    
}

