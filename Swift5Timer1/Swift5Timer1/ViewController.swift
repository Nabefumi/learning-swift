//
//  ViewController.swift
//  Swift5Timer1
//
//  Created by Takafumi Watanabe on 2021-08-17.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var imageView: UIImageView!
    
    
    @IBOutlet weak var startButton: UIButton!
    
    
    @IBOutlet weak var stopButton: UIButton!
    
    var timer = Timer()
    
    var count = Int()
    
    var imageArrray = [UIImage]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
        count = 0
        
        stopButton.isEnabled  = false
        
        for i in 0..<5{
            print(i)
            
            let image = UIImage(named: "\(i)")
            imageArrray.append(image!)
        }
        
        imageView.image = UIImage(named: "0")
    }
    
    func startTimer() {
        
        timer = Timer.scheduledTimer(timeInterval: 0.2, target: self, selector: #selector(timerUpdate), userInfo: nil, repeats: true)
    }
    
    @objc func timerUpdate() {
        count = count + 1
        
        if count > 4 {
            count = 0
        }
        imageView.image = imageArrray[count]
    }
    
    
    @IBAction func start(_ sender: Any) {
        
        //The image reflection in imageVew
        startTimer()
        //Stop working start Button
        startButton.isEnabled = false
        stopButton.isEnabled = true

    }
    
    
    @IBAction func stop(_ sender: Any) {
        // Stop a image inside imageVew
        
        //To put start botton
        stopButton.isEnabled = false
        startButton.isEnabled = true
        
        timer.invalidate()
    }
    

}

