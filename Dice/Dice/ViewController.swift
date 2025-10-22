//
//  ViewController.swift
//  Dice
//
//  Created by anel bakhtygereyeva on 22.10.2025.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    //IBOutlet allows to reference an UI element
    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    let diceArray = [#imageLiteral(resourceName: "DiceOne"),#imageLiteral(resourceName: "DiceTwo"),#imageLiteral(resourceName: "DiceThree"),#imageLiteral(resourceName: "DiceFour"),#imageLiteral(resourceName: "DiceFive"),#imageLiteral(resourceName: "DiceSix")]
    var diceSoundPlayer: AVAudioPlayer?

    @IBAction func rollButtonPressed(_ sender: UIButton) {
        rollDice()
    }
    
    func rollDice() {
        diceImageView1.image = diceArray.randomElement()
        diceImageView2.image = diceArray.randomElement()
        playDiceSound()
    }
    
    func playDiceSound() {
            guard let soundURL = Bundle.main.url(forResource: "diceSound", withExtension: "mp3") else {
                print("Sound file not found")
                return
            }
            do {
                diceSoundPlayer = try AVAudioPlayer(contentsOf: soundURL)
                diceSoundPlayer?.play()
            } catch {
                print("Failed to play sound: \(error)")
            }
        }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        if motion == .motionShake {
            rollDice()
        }
    }
    
}

