//
//  Human.swift
//  QuestionApp1
//
//  Created by Takafumi Watanabe on 2021-09-24.
//

import Foundation

class Human: Animal {
    override func breath() {
        
        super.breath()
        profile()
    }
    
    func profile() {
        print("I'm Human")
    }
}
