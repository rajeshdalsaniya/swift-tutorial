//
//  ColorTextFieldDelegate.swift
//  TextFieldDelegateDemo
//
//  Created by Rajesh Dalsaniya on 29/01/17.
//  Copyright © 2017 Rajesh Dalsaniya. All rights reserved.
//

import Foundation
import UIKit


class ColorTextFieldDelegate: NSObject, UITextFieldDelegate {
    
     // MARK: Text Field Delegate
    
    // Set random color to texfiled Text when user input text
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        textField.textColor = randomColor()
        
        return true
    }
    
   // dismiss keyboard when user click on return button
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
    
    // MARK: Function for Random Color Generator
    fileprivate func randomColor() -> UIColor {
        
        return UIColor(red: CGFloat(Float(arc4random()) / Float(UINT32_MAX)), green: CGFloat(Float(arc4random()) / Float(UINT32_MAX)), blue: CGFloat(Float(arc4random()) / Float(UINT32_MAX)), alpha: 1)
    }
    
    
}
