//
//  RadielGradient.swift
//  Gradient-Demo
//
//  Created by Ankit Jaiswal on 13/01/19.
//  Copyright © 2019 Ankit Jaiswal. All rights reserved.
//

import UIKit

@IBDesignable
class RadielGradient: UIView {
    @IBInspectable var InsideColor: UIColor = UIColor.clear
    @IBInspectable var OutsideColor: UIColor = UIColor.clear
    
    override func draw(_ rect: CGRect) {
        let colors = [InsideColor.cgColor, OutsideColor.cgColor] as! CFArray
        let endRadius = min(frame.width, frame.height) / 2
        let center = CGPoint.init(x: bounds.size.width/2, y: bounds.size.height/2)
        
        
        let gradient = CGGradient.init(colorsSpace: nil, colors: colors, locations: nil)
        UIGraphicsGetCurrentContext()?.drawRadialGradient(gradient!, startCenter: center, startRadius: 0.0, endCenter: center, endRadius: endRadius, options: CGGradientDrawingOptions.drawsAfterEndLocation)
    }
}
