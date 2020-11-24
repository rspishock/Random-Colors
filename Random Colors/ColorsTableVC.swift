//
//  ColorsTableVC.swift
//  Random Colors
//
//  Created by Ryan Spishock on 11/20/20.
//

import UIKit

class ColorsTableVC: UIViewController {
    
    var colors: [UIColor] = []
    
    enum Cells {
        static let colorCell = "ColorCell"
    }
    
    enum Segues {
        static let toDetail = "ToColorsDetailVC"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        addRandomColors()
        // Do any additional setup after loading the view.
    }           // override func
    
    func addRandomColors() {
        for _ in 0..<50 {
            colors.append(.random())
        }       // for loop
    }           // func
    
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destVC = segue.destination as! ColorsDetailVC
        destVC.color = sender as? UIColor
    }           // override func
}               // class

extension ColorsTableVC: UITableViewDelegate, UITableViewDataSource {
    
    // sets number of table rows to 50
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return colors.count
    }           // func
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: Cells.colorCell) else {
            return UITableViewCell()
        }       // guard let
        let color = colors[indexPath.row]
        cell.backgroundColor = color
        // cell?.backgroundColor = colors[indexPath.row]
        
        return cell
    }           // func
    
    // links selected table row to ToColorsDetailVC view controller
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let color = colors[indexPath.row]
        
        performSegue(withIdentifier: Segues.toDetail, sender: color)
    }           // func
    
}               // extension
