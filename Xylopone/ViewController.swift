//
//  ViewController.swift
//  Xylopone
//
//  Created by Neelesh Jain on 08/03/20.
//  Copyright © 2020 Neelesh Jain. All rights reserved.
//

import UIKit
import AVFoundation


class ViewController: UIViewController {
    
    var audioPlayer:AVAudioPlayer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        //setting up audio player

    }

    @IBAction func buttonPressed(_ sender: UIButton) {
        
        
        
        play(keyID: sender.currentTitle!)
        
        //reduce button opacity to half
        sender.alpha = 0.5
        
        //delaying tactic
        _ = Timer.scheduledTimer(withTimeInterval: 0.1, repeats: false) { (timer) in
            sender.alpha = 1.0
        }
        
    }
    
    func play(keyID soundName: String) {
        let soundURL = Bundle.main.path(forResource: soundName, ofType: "wav")
        audioPlayer = try! AVAudioPlayer(contentsOf: URL(fileURLWithPath: soundURL!))
        audioPlayer!.play()
        
    }
}


