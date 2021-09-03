//
//  ViewController.swift
//  Swift6TableViewApp1
//
//  Created by Takafumi Watanabe on 2021-09-03.
//

import UIKit

class ViewController: UIViewController, UITabBarDelegate, UITableViewDelegate, UITableViewDataSource {
    

    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var textField: UITextField!
    
    var textArry = [String]()
    var imageArray = ["1", "2", "3", "4", "5"]
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        
        return 1
    
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        
        return 563
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return textArry.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        
        let imageView = cell.contentView.viewWithTag(1) as! UIImageView
        
        let label = cell.contentView.viewWithTag(2) as! UILabel
        
        label.text = textArry[indexPath.row]
        
        
        label.text = textArry[indexPath.row]
        imageView.image = UIImage(named: imageArray[indexPath.row])
        
        return cell
        
    }
    
    
    @IBAction func tap(_ sender: Any) {
            
        if textArry.count > 5 || textField.text?.isEmpty == true {
            return
        }
        
        textArry.append(textField.text!)
        textField.text = ""
        if textArry.count <= 5 {
            tableView.reloadData()
        }
    }
    



}

