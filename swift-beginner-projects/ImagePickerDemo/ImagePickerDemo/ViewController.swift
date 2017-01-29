//
//  ViewController.swift
//  ImagePickerDemo
//
//  Created by Rajesh Dalsaniya on 29/01/17.
//  Copyright © 2017 Rajesh Dalsaniya. All rights reserved.
//  Web www.rajeshdalsaniya.com
//

/*
 The UIImagePickerController class manages customizable, system-supplied user interfaces for taking pictures and movies on supported devices, and for choosing saved images and movies for use in your app. An image picker controller manages user interactions and delivers the results of those interactions to a delegate object.
        https://developer.apple.com/reference/uikit/uiimagepickercontroller
 */

// Note: Dont forget to add value of NSPhotoLibraryUsageDescription in plist file

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
    // MARK: Action for opening Image Picker Controller
    @IBAction func chooseImage() {
        let openGallery = UIImagePickerController()
        self.present(openGallery, animated: true, completion: nil)
    }


}

