//
//  ViewController.swift
//  DownloadImageDemo
//
//  Created by Rajesh Dalsaniya on 09/02/17.
//  Copyright © 2017 Rajesh Dalsaniya. All rights reserved.
//  Website www.rajeshdalsaniya.com
//

/*
 The NSURLSession class and related classes provide an API for downloading content. This API provides a rich set of delegate methods for supporting authentication and gives your app the ability to perform background downloads when your app is not running or, in iOS, while your app is suspended.
 */

// https://developer.apple.com/reference/foundation/urlsession
// https://developer.apple.com/reference/foundation/nsurl
// https://developer.apple.com/reference/foundation/url

// Note: Don't forget to set App Transport Security Settings -> Allow Arbitrary Loads  to YES in Info.plist file


import UIKit

// Image Source
struct ImageSource {
    static let ImageURL = "https://cdn.pixabay.com/photo/2015/04/15/00/49/cat-723031_960_720.jpg"
}

class ViewController: UIViewController {
    
    @IBOutlet weak var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
        // Image URL
        let imageURL = URL(string: ImageSource.ImageURL)
        
        // Create Network Request for fetching Image
        let task = URLSession.shared.dataTask(with: imageURL!) { (data, response, error) in
            
            if error == nil {
                
                // Create image from data
                let downloadImage = UIImage(data: data!)
                
                // update ui on main thread
                self.performUIUpdatesOnMain {
                    self.imageView.image = downloadImage
                }
                
            } else {
                print(error ?? "Something Wrong!")
            }
        }
        
        task.resume()
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    // ACTION: update on main thread
    func performUIUpdatesOnMain(_ updates: @escaping () -> Void) {
        DispatchQueue.main.async {
            updates()
        }
        
    }
    
    
    
}

