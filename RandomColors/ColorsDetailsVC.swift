//
//  ColorsDetailsVC.swift
//  RandomColors
//
//  Created by Bruno Rangel on 21/05/23.
//

import UIKit

class ColorsDetailsVC: ViewController {
    var color: UIColor?

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        view.backgroundColor = color ?? .blue
    }
}
