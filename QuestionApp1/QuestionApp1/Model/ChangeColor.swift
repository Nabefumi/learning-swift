//
//  ChangeColor.swift
//  QuestionApp1
//
//  Created by Takafumi Watanabe on 2021-09-24.
//

import Foundation
import UIKit

class ChangeColor{
    
    func changeColor(topR: CGFloat, topG: CGFloat, topB: CGFloat, topAlpha: CGFloat, bottomR: CGFloat, bottomG: CGFloat, tbottomB: CGFloat, bottomAlpha: CGFloat)->CAGradientLayer{
        
        let topColor = UIColor(red:topR, green:topG, blue:topB, alpha:topAlpha)
        
        let bottomColor = UIColor(red:bottomR, green:bottomG, blue:tbottomB, alpha:bottomAlpha)

        let graadientColor = [topColor.cgColor, bottomColor.cgColor]
        
        let gradientLayer = CAGradientLayer()
        gradientLayer.colors = graadientColor
        
        return gradientLayer
        
    }
}
