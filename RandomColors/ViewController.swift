//
//  ViewController.swift
//  RandomColors
//
//  Created by Bruno Rangel on 21/05/23.
//

import UIKit

class ViewController: UIViewController {
    var colors: [UIColor] = []
    
    enum Cells {
        static let colorCell = "ColorCell"
    }
    
    enum Segues {
        static let toColorDetails = "ToColorsDetailsVC"
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        addRandomColors()
    }
    
    func addRandomColors() {
        for _ in 0..<50 {
//            colors.append(UIColor.random())
            colors.append(.random())
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destinationVC = segue.destination as! ColorsDetailsVC
        destinationVC.color = sender as? UIColor
    }
    
}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    // This inheritance could be declared in the main class code, but it was extracted to an
    // extension for better code organization
    
    // Data Souce method
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return colors.count
    }
    
    // Delegate method
    // Here is where we customize the cells
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: Cells.colorCell) else {
            return UITableViewCell()
        }
        let color = colors[indexPath.row]
        cell.backgroundColor = color
        return cell
    }
    
    // Used to "on tap" event
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let color = colors[indexPath.row]
        performSegue(withIdentifier: Segues.toColorDetails, sender: color)
    }
}
