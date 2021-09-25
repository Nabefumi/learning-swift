//
//  ViewController.swift
//  QuestionApp1
//
//  Created by Takafumi Watanabe on 2021-09-17.
//

import UIKit

class ViewController: UIViewController, NowScoreDelegate {

    @IBOutlet weak var imageView: UIImageView!
    
    @IBOutlet weak var maxScoreLabel: UILabel!
    
    var correctCount = 0
    var wrongCount = 0
    var maxScore = 0
    var questionNumber = 0
    
    let imagesList = ImafesList()
    
    var pickedAnswer = false
//    var withOutMP3 = WithOutMP3()
    
    var changeColor = ChangeColor()
    
    var gradientLayer = CAGradientLayer()

    var soundFile = SoundFile()
    override func viewDidLoad() {
        super.viewDidLoad()
        
        changeColor.changeColor(topR: 0.07, topG: 0.13, topB: 0.26, topAlpha: 1.0, bottomR: 1.0, bottomG: 0.54, tbottomB: 0.74, bottomAlpha: 1.0)
        
        gradientLayer.frame = view.bounds
        
        view.layer.insertSublayer(gradientLayer, at: 0)
        
        
        imageView.layer.cornerRadius = 20.0

        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        correctCount = 0
        wrongCount = 0
        questionNumber = 0
        
        imageView.image = UIImage(named: imagesList.list[0].imageText)
        
        if UserDefaults.standard.object(forKey: "beforeCount") != nil {
            
            maxScore = UserDefaults.standard.object(forKey: "beforeCount") as! Int
        }
        
        maxScoreLabel.text = String(maxScore)
        
        
    }

    @IBAction func answer(_ sender: Any) {
        
      
        if (sender as AnyObject).tag == 1 {
                        
//            withOutMP3.playSound(fileName: "maruSound", extentionName: "mp3")
            
            soundFile.playSound(fileName: "maruSound", extentionName: "mp3")
            
            pickedAnswer = true
            
        }else if (sender as AnyObject).tag == 2{
            soundFile.playSound(fileName: "batsuSound", extentionName: "mp3")
            pickedAnswer = false
            
        }
        
        
        check()
        nextQuestion()
        
    }
    
    func check(){
        let correctAnswer = imagesList.list[questionNumber].answer
        if correctAnswer == pickedAnswer{
            correctCount = correctCount + 1

        }else{
            wrongCount = wrongCount + 1
        }

    }
    
    func nextQuestion() {
        if questionNumber <= 9{
            questionNumber = questionNumber + 1
            imageView.image = UIImage(named: imagesList.list[questionNumber].imageText)
            
        }else{
            performSegue(withIdentifier: "next", sender: nil)
        }
    }
    
    func nowScore(score: Int) {
        soundFile.playSound(fileName: "sound", extentionName: "mp3")
        maxScoreLabel.text = String(score)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "next" {
            let nextVC = segue.destination as! NextViewController
            
            nextVC.correctedCount = correctCount
            nextVC.wrongCount = wrongCount
            nextVC.delegate = self
            
        }
        
    }
    
}

