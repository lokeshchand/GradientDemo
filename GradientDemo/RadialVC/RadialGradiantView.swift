//
//  RadialGradiantView.swift
//  GradientDemo
//
//  Created by lokesh chand on 24/05/18.
//  Copyright © 2018 invetech. All rights reserved.
//

import UIKit
@IBDesignable

class RadialGradiantView: UIView {
    
    @IBInspectable var InsideColor:UIColor = UIColor.clear
    @IBInspectable var OutsideColor:UIColor = UIColor.clear
    
    
    override func draw(_ rect: CGRect)
    {
        let colors = [InsideColor.cgColor,OutsideColor.cgColor] as CFArray
        let gradient = CGGradient(colorsSpace: nil, colors: colors, locations: nil)
        let endRadius = min(frame.width, frame.height)/2
        let center = CGPoint(x: bounds.size.width/2, y: bounds.size.height/2)
        
        
        UIGraphicsGetCurrentContext()!.drawRadialGradient(gradient!, startCenter: center, startRadius: 10, endCenter: center, endRadius: endRadius, options: CGGradientDrawingOptions.drawsAfterEndLocation)
    }


}
