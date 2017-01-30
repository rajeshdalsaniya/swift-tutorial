//
//  ViewController.swift
//  TableViewImageDemo
//
//  Created by Rajesh Dalsaniya on 30/01/17.
//  Copyright © 2017 Rajesh Dalsaniya. All rights reserved.
//  Website www.rajeshdalsaniya.com
//

/*
 A table view displays a list of items in a single column. UITableView is a subclass of UIScrollView, which allows users to scroll through the table, although UITableView allows vertical scrolling only. The cells comprising the individual items of the table are UITableViewCell objects; UITableView uses these objects to draw the visible rows of the table. Cells have content—titles and images—and can have, near the right edge, accessory views. Standard accessory views are disclosure indicators or detail disclosure buttons; the former leads to the next level in a data hierarchy and the latter leads to a detailed view of a selected item. Accessory views can also be framework controls, such as switches and sliders, or can be custom views. Table views can enter an editing mode where users can insert, delete, and reorder rows of the table.
 */

// More about tableviw: https://developer.apple.com/reference/uikit/uitableview

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    let countries = Country.self
    let userDicKeyCopy = Array(Country.country.keys)

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
   
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return userDicKeyCopy.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CountryName")
        let isoCode = userDicKeyCopy[indexPath.row]
        
        cell?.textLabel?.text = countries.country[isoCode]
        cell?.imageView?.image = UIImage(named: isoCode.lowercased()) ?? UIImage(named: "gb")
        
        return cell!
    
    }


}

