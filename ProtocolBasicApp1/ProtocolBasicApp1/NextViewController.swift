//
//  NextViewController.swift
//  ProtocolBasicApp1
//
//  Created by Takafumi Watanabe on 2021-09-08.
//

import UIKit

    protocol CatcProtocol {
        
        func catchData(count:Int)
        
    }

class NextViewController: UIViewController {

    //count up label
    @IBOutlet weak var label: UILabel!
    
    var count:Int = 0
    var delegate:CatcProtocol?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func plusAction(_ sender: Any) {
        
        count = count + 1
        label.text = String(count)
        
    }
    
    @IBAction func back(_ sender: Any) {
        
        delegate?.catchData(count: count)
        dismiss(animated: true, completion: nil)
        
    }
    
    
    
    
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
