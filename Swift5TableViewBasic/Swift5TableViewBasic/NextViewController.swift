//
//  NextViewController.swift
//  Swift5TableViewBasic
//
//  Created by Takafumi Watanabe on 2021-09-03.
//

import UIKit

class NextViewController: UIViewController {

    @IBOutlet weak var todoLabel: UILabel!
    
    var toDoString = String()
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        todoLabel.text = toDoString
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        navigationController?.isNavigationBarHidden = false
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
