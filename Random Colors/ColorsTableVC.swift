//
//  ColorsTableVC.swift
//  Random Colors
//
//  Created by Ryan Spishock on 11/20/20.
//

import UIKit

class ColorsTableVC: UIViewController {
    
    var colors: [UIColor] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    func createRandomColors() {
        for _ in 0..<50 {
            
        }
    }
    
    func createRandomColor() -> UIColor {
        
        // creates a random RGB color to append to the colors array
        let randomColor = UIColor(red: CGFloat.random(in: 0...1),
                                  green: CGFloat.random(in: 0...1),
                                  blue: CGFloat.random(in: 0...1),
                                  alpha: 1)
        
        return randomColor
    }

}

extension ColorsTableVC: UITableViewDelegate, UITableViewDataSource {
    
    // sets number of table rows to 50
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 50
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return UITableViewCell()
    }
    
    // links selected table row to ToColorsDetailVC view controller
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: "ToColorsDetailVC", sender: nil)
    }
    
}
