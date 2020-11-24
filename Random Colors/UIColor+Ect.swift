//
//  UIColor+Ect.swift
//  Random Colors
//
//  Created by Ryan Spishock on 11/24/20.
//

import UIKit

extension UIColor {
    
    static func random() -> UIColor {
        
        // creates a random RGB color to append to the colors array
        let randomColor = UIColor(red: CGFloat.random(in: 0...1),
                                  green: CGFloat.random(in: 0...1),
                                  blue: CGFloat.random(in: 0...1),
                                  alpha: 1)
        
        return randomColor
    }       // static func
}           // extension
