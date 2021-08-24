//
//  ViewController.swift
//  Swift6BasicApp1
//
//  Created by Takafumi Watanabe on 2021-08-18.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var imageView: UIImageView!
    
    @IBOutlet weak var blurView: UIVisualEffectView!
    
    @IBOutlet weak var countLabel: UILabel!
    
    @IBOutlet weak var tapCountlabel: UILabel!
    
    var count = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        // Do any additional setup after loading the view.
    }

    @IBAction func tap(_ sender: Any) {
        
        count = count + 1
    
        countLabel.text = String(count)
        
        //if
        if count > 5 {
            imageView.image = UIImage(named: "back2")
        }
        if count > 10{
            imageView.image = UIImage(named: "back3")
        }
        switch count {
        case 6:
        
            tapCountlabel.text = "6"
        case 10:
            tapCountlabel.text = "10"
            
            break
        default:
            tapCountlabel.text = "There are not 6 and 10"

        
        }
        
    }

}

