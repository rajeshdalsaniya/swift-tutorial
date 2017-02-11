//
//  ViewController.swift
//  UserDefaultsDemo
//
//  Created by Rajesh Dalsaniya on 11/02/17.
//  Copyright © 2017 Rajesh Dalsaniya. All rights reserved.
//  Website www.rajeshdalsaniya.com
//

/*
 The NSUserDefaults class provides a programmatic interface for interacting with the defaults system. The defaults system allows an application to customize its behavior to match a user’s preferences. For example, you can allow users to determine what units of measurement your application displays or how often documents are automatically saved. Applications record such preferences by assigning values to a set of parameters in a user’s defaults database. The parameters are referred to as defaults since they’re commonly used to determine an application’s default state at startup or the way it acts by default.
 */

// https://developer.apple.com/reference/foundation/userdefaults

// NOTES: To test userdefaults first run the app on simulator then close and kill app process by pressing Command + Shift + H (twice it will open running app screen)

import UIKit

class ViewController: UIViewController {
    
    // MARK: Outlets
    @IBOutlet weak var switch1: UISwitch!
    @IBOutlet weak var switch2: UISwitch!
    
    @IBOutlet weak var imageView1: UIImageView!
    @IBOutlet weak var imageView2: UIImageView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // Set value of switch and imageview based on the Userdefaults
        if let imageSet = UserDefaults.standard.value(forKey: "isImageSet") {
            if imageSet as! Bool {
                switch1.isOn = true
                setImage()
                print("Image Set for First Image View")
            } else {
                print("Image is not set for First Image View")
            }
            
        } else {
            UserDefaults.standard.set(false, forKey: "isImageSet")
            print("App is launched first time")
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK: Action - Set imageview with Userdefaults
    @IBAction func setImageWithUserDefaults(_ sender: UISwitch) {
        if switch1.isOn {
            setImage()
            UserDefaults.standard.set(true, forKey: "isImageSet")
        } else {
            unsetImage()
            UserDefaults.standard.set(false, forKey: "isImageSet")
        }
    }
    
    // Set imageview without userdefaults
    @IBAction func setImageWithoutUserDefaults(_ sender: UISwitch) {
        if switch2.isOn {
            imageView2.image = UIImage(named: "image2")
        } else {
            imageView2.image = nil
        }
    }
    
    // set image
    func setImage() {
        imageView1.image = UIImage(named: "image1")
    }
    
    // unset image
    func unsetImage() {
        imageView1.image = nil
    }
    
}

