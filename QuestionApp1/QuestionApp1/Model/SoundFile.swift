//
//  SoundFile.swift
//  QuestionApp1
//
//  Created by Takafumi Watanabe on 2021-09-24.
//

import Foundation
import AVFoundation

class SoundFile {
    var player: AVAudioPlayer?
    
    func playSound(fileName: String, extentionName: String) {
        
        let soundURL = Bundle.main.url(forResource: fileName, withExtension: extentionName)
        
        do {
            
            player = try AVAudioPlayer(contentsOf: soundURL!)
            player?.play()
            
        } catch {
            print(("Error"))
            
        }
    }
}
