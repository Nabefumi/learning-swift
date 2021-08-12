//
//  ViewController.swift
//  Swift5CountUp1
//
//  Created by Takafumi Watanabe on 2021-08-11.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var countLabel: UILabel!
    
    var count = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        countLabel.text = "0"
        
    }
    
    @IBAction func plus(_ sender: Any) {
        //
        
        //To do Count Up
        count = count + 1
        
        countLabel.text = String(count)
        
        //if number is 10, Change a color
        
        if count >= 10 {
            changeTextColor()
        }
    }
    
    @IBAction func minus(_ sender: Any) {
        
        //Count down
        count = count - 1
        
        countLabel.text = String(count)
        
        if count <= 0 {
            resetColor()
        }
    }
    
    func changeTextColor() {
        countLabel.textColor = .yellow
    }
    
    func resetColor() {
        countLabel.textColor = .white
    }
}

