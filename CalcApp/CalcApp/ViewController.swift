//
//  ViewController.swift
//  CalcApp
//
//  Created by Takafumi Watanabe on 2021-08-24.
//

import UIKit

class ViewController: UIViewController {
    
    var carModel = Car()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        carModel.frontWheel = 10
        carModel.rearWheel = 10
    }

    
    @IBAction func doAction(_ sender: Any) {
        
        carModel.drive()
        carModel.move(toBack: "Move to Back!!")
        let total = carModel.pludAndMinus(num1: carModel.frontWheel, num2: carModel.rearWheel)
        print("Total of Wheel \(total)")
    }

    
    
    

}

