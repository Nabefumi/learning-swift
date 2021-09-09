//
//  ViewController.swift
//  ProtocolBasicApp1
//
//  Created by Takafumi Watanabe on 2021-09-08.
//

import UIKit

class ViewController: UIViewController, CatcProtocol {
    @IBOutlet weak var label: UILabel!
    
    var count = Int()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    func catchData(count: Int) {
        label.text = String(count)
    }

    @IBAction func next(_ sender: Any) {
        
        performSegue(withIdentifier: "next", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let nextVC = segue.destination as! NextViewController
        nextVC.delegate = self
    }
    
    
    
}

