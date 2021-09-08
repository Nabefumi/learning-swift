//
//  ViewController.swift
//  Swift6Struct
//
//  Created by Takafumi Watanabe on 2021-09-08.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate,UITableViewDataSource, SetOKDelegate {
    
    @IBOutlet weak var tableView: UITableView!
    
    var person = Person()
    var personArray = [Person]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return personArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for:indexPath)

        
        let userNameLabel = cell.contentView.viewWithTag(1) as! UILabel
        
        userNameLabel.text = personArray[indexPath.row].name
        
        let hobbyLabel = cell.contentView.viewWithTag(2) as! UILabel
        
        hobbyLabel.text = personArray[indexPath.row].hobby
        
        let likeLabel = cell.contentView.viewWithTag(3) as! UILabel
        
        likeLabel.text = personArray[indexPath.row].like
        
        return cell
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
        
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 200
    }
    
    @IBAction func favButtonAction(_ sender: Any) {
        
        //move screen
        
        performSegue(withIdentifier: "next", sender: nil)
    }
    
    func setOK(check: Person) {
    
        personArray.append(check)
        tableView.reloadData()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier  == "next"{
            
            let nextVC = segue.destination as! NextViewController
            
            nextVC.setOKDelegate = self
            
        }
    }
    
    


}

