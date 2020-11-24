//
//  ColorsDetailVC.swift
//  Random Colors
//
//  Created by Ryan Spishock on 11/20/20.
//

import UIKit

class ColorsDetailVC: UIViewController {
    
    var color: UIColor?

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = color ?? .blue
    }       // override func
}           // class
