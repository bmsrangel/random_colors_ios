//
//  UIColors+Ext.swift
//  RandomColors
//
//  Created by Bruno Rangel on 22/05/23.
//

import UIKit

extension UIColor {
    static func random() -> UIColor {
        let randomColor = UIColor(red: CGFloat.random(in: 0...1.0), green: CGFloat.random(in: 0...1.0), blue: CGFloat.random(in: 0...1.0), alpha: 1.0)
        return randomColor
    }
}
