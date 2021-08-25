//
//  Car.swift
//  CalcApp
//
//  Created by Takafumi Watanabe on 2021-08-24.
//

import Foundation


class Car{
    
    var frontWheel = 0
    var rearWheel = 0
    
    
    init() {
        
        frontWheel = 0
        rearWheel = 0
    }
    
    //MVC
    
    func drive() {
    
        print("Drive Start!!")
        print("FrontWheel  \(frontWheel)")
        print("FrontWheel  \(rearWheel)")
    }
    
    func move(toBack: String) {
        print(toBack)
    }
    
    func pludAndMinus(num1: Int, num2: Int) -> Int {
        
        return num1 + num2
    }
}
