//
//  SoundPlayer.swift
//  Music
//
//  Created by Yuki Usui on 2025/01/04.
//

import UIKit
import AVFoundation

class SoundPlayer: NSObject {
        
    var player: AVAudioPlayer?
    
    func play(name: String) {
        let data = NSDataAsset(name: name)?.data
        guard let data else { return }
        do {
            try player = AVAudioPlayer(data: data)
            player?.play()
        }catch {
            
        }
        
    }
    
}
