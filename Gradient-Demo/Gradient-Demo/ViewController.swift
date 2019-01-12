//
//  ViewController.swift
//  Gradient-Demo
//
//  Created by Ankit Jaiswal on 12/01/19.
//  Copyright © 2019 Ankit Jaiswal. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let gradientLayer = CAGradientLayer()
        
        gradientLayer.colors = [UIColor.black.cgColor, UIColor.white.cgColor]
        gradientLayer.frame = view.frame
        
        //this will be on the top of every view
       // view.layer.addSublayer(gradientLayer)
        
        //this will add at the bottom at index 0
       // view.layer.insertSublayer(gradientLayer, at: 0)
    }


}

