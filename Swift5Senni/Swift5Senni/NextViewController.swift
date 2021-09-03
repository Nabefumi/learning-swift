//
//  NextViewController.swift
//  Swift5Senni
//
//  Created by Takafumi Watanabe on 2021-09-02.
//

import UIKit

class NextViewController: UIViewController {

    @IBOutlet weak var label2: UILabel!
    
    var count2 = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        print("test")
        label2.text = String(count2)

        // Do any additional setup after loading the view.
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
