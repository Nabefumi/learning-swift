//
//  WithOutMP3.swift
//  QuestionApp1
//
//  Created by Takafumi Watanabe on 2021-09-24.
//

import Foundation

class WithOutMP3: SoundFile {
    
    override func playSound(fileName: String, extentionName: String) {
        
        super.playSound(fileName: fileName, extentionName: extentionName)
        
        if extentionName == "mp3" {
            print("this File is not play.")
        }
        player?.stop()
    }
}
