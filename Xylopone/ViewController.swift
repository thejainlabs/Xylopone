//
//  ViewController.swift
//  Xylopone
//
//  Created by Neelesh Jain on 08/03/20.
//  Copyright © 2020 Neelesh Jain. All rights reserved.
//

import UIKit
import AVFoundation

var audioPlayerA:AVAudioPlayer?
var audioPlayerB:AVAudioPlayer?
var audioPlayerC:AVAudioPlayer?
var audioPlayerD:AVAudioPlayer?
var audioPlayerE:AVAudioPlayer?
var audioPlayerF:AVAudioPlayer?
var audioPlayerG:AVAudioPlayer?

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        //setting up audio player
        setupAudioPlayer()
    }

    @IBAction func buttonPressed(_ sender: UIButton) {
        
        play(keyID: sender.tag)
    }
}

func play(keyID tag: Int) {
    switch tag {
    case 1:
        audioPlayerC!.play()
    case 2:
        audioPlayerD!.play()
    case 3:
        audioPlayerE!.play()
    case 4:
        audioPlayerF!.play()
    case 5:
        audioPlayerG!.play()
    case 6:
        audioPlayerA!.play()
    case 7:
        audioPlayerB!.play()
    default:
        print("invalid key pressed")
    }
}

func setupAudioPlayer() {
    let soundURLA = Bundle.main.path(forResource: "A", ofType: "wav")
    let soundURLB = Bundle.main.path(forResource: "B", ofType: "wav")
    let soundURLC = Bundle.main.path(forResource: "C", ofType: "wav")
    let soundURLD = Bundle.main.path(forResource: "D", ofType: "wav")
    let soundURLE = Bundle.main.path(forResource: "E", ofType: "wav")
    let soundURLF = Bundle.main.path(forResource: "F", ofType: "wav")
    let soundURLG = Bundle.main.path(forResource: "G", ofType: "wav")
    
    do {
        audioPlayerA = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: soundURLA!))
        audioPlayerB = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: soundURLB!))
        audioPlayerC = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: soundURLC!))
        audioPlayerD = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: soundURLD!))
        audioPlayerE = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: soundURLE!))
        audioPlayerF = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: soundURLF!))
        audioPlayerG = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: soundURLG!))
    }
    catch {
        print(error)
    }
}
