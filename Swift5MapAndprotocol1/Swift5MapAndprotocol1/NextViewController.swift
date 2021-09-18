//
//  NextViewController.swift
//  Swift5MapAndprotocol1
//
//  Created by Takafumi Watanabe on 2021-09-16.
//

import UIKit
protocol SearchLocationDelegate {
    func searchLocation(longitude:String, latitude:String)
}

class NextViewController: UIViewController {
    
    @IBOutlet weak var longitudeTextField: UITextField!
    
    @IBOutlet weak var latitudeTextField: UITextField!
    
    var deligate: SearchLocationDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func okAction(_ sender: Any) {
        
        let longitude = longitudeTextField.text!
        let latitude = latitudeTextField.text!
        

        
        if longitudeTextField.text != nil && latitudeTextField.text != nil {
            
            deligate?.searchLocation(longitude: longitude, latitude: latitude)
            
            dismiss(animated: true, completion: nil)
        }
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
