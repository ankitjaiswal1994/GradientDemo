//
//  ViewController.swift
//  Gradient-Demo
//
//  Created by Ankit Jaiswal on 12/01/19.
//  Copyright © 2019 Ankit Jaiswal. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var gradientView: GradientView!
    var colorsArray : [(color1: UIColor, color2: UIColor)] = []
    var currentColorIndex = -1
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        colorsArray.append((color1: #colorLiteral(red: 0.3098039329, green: 0.01568627544, blue: 0.1294117719, alpha: 1), color2: #colorLiteral(red: 0.3176470697, green: 0.07450980693, blue: 0.02745098062, alpha: 1)))
        colorsArray.append((color1: #colorLiteral(red: 0.09019608051, green: 0, blue: 0.3019607961, alpha: 1), color2: #colorLiteral(red: 0.3098039329, green: 0.01568627544, blue: 0.1294117719, alpha: 1)))
        colorsArray.append((color1: #colorLiteral(red: 0.1764705926, green: 0.01176470611, blue: 0.5607843399, alpha: 1), color2: #colorLiteral(red: 0.7450980544, green: 0.1568627506, blue: 0.07450980693, alpha: 1)))
        colorsArray.append((color1: #colorLiteral(red: 0.3647058904, green: 0.06666667014, blue: 0.9686274529, alpha: 1), color2: #colorLiteral(red: 0.3176470697, green: 0.07450980693, blue: 0.02745098062, alpha: 1)))
        colorsArray.append((color1: #colorLiteral(red: 0.09019608051, green: 0, blue: 0.3019607961, alpha: 1), color2: #colorLiteral(red: 0.9372549057, green: 0.3490196168, blue: 0.1921568662, alpha: 1)))
        colorsArray.append((color1: #colorLiteral(red: 0.3098039329, green: 0.01568627544, blue: 0.1294117719, alpha: 1), color2: #colorLiteral(red: 0.521568656, green: 0.1098039225, blue: 0.05098039284, alpha: 1)))
        colorsArray.append((color1: #colorLiteral(red: 0.1019607857, green: 0.2784313858, blue: 0.400000006, alpha: 1), color2: #colorLiteral(red: 0.05882352963, green: 0.180392161, blue: 0.2470588237, alpha: 1)))
        colorsArray.append((color1: #colorLiteral(red: 0.3647058904, green: 0.06666667014, blue: 0.9686274529, alpha: 1), color2: #colorLiteral(red: 0.3647058904, green: 0.06666667014, blue: 0.9686274529, alpha: 1)))

//        let gradientLayer = CAGradientLayer()
//
//        gradientLayer.colors = [UIColor.black.cgColor, UIColor.white.cgColor]
//        gradientLayer.frame = view.frame
        
        //this will be on the top of every view
       // view.layer.addSublayer(gradientLayer)
        
        //this will add at the bottom at index 0
       // view.layer.insertSublayer(gradientLayer, at: 0)
        animateBackgroundColor()
    }
    
    func animateBackgroundColor() {
        currentColorIndex = currentColorIndex == (colorsArray.count - 1) ? 0 : currentColorIndex + 1
        
        UIView.transition(with: gradientView, duration: 2.0, options: .transitionCrossDissolve, animations: {
            self.gradientView.firstColor = self.colorsArray[self.currentColorIndex].color1
            self.gradientView.secondColor = self.colorsArray[self.currentColorIndex].color2
        }, completion: { (_) in
            self.animateBackgroundColor()
        })
        
    }


}

