//
//  GradientView.swift
//  Gradient-Demo
//
//  Created by Ankit Jaiswal on 12/01/19.
//  Copyright © 2019 Ankit Jaiswal. All rights reserved.
//

import UIKit

@IBDesignable
class GradientView: UIView {
    @IBInspectable var firstColor: UIColor = UIColor.clear {
        didSet {
            updateView()
        }
    }
    
    @IBInspectable var secondColor: UIColor = UIColor.clear {
        didSet {
            updateView()
        }
    }
    
    override class var layerClass: AnyClass {
        get {
            return CAGradientLayer.self
        }
    }
    
    func updateView() {
        let layer = self.layer as! CAGradientLayer
        layer.startPoint = CGPoint.init(x: 0.0, y: 0.5)
        layer.endPoint = CGPoint.init(x: 1.0, y: 0.5)
        layer.colors = [firstColor.cgColor, secondColor.cgColor]
    }
}
