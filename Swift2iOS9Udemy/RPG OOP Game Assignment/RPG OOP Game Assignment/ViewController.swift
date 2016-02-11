//
//  ViewController.swift
//  RPG OOP Game Assignment
//
//  Created by Allen Czerwinski on 2/10/16.
//  Copyright © 2016 Allen Czerwinski. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    @IBOutlet weak var gameTextOutlet: UILabel!
    @IBOutlet weak var resetButtonUILabel: UIButton!
    @IBOutlet weak var resetGameUIText: UILabel!
    @IBOutlet weak var player1AttackButtonUI: UIButton!
    @IBOutlet weak var player1AttackTextUI: UILabel!
    @IBOutlet weak var player2AttackButtonUI: UIButton!
    @IBOutlet weak var player2AttackTextUI: UILabel!
    

    var player1: Player!
    var player2: Player!
    var gameMusic: AVAudioPlayer!
    var attackSound: AVAudioPlayer!
    var deathSound: AVAudioPlayer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let path1 = NSBundle.mainBundle().pathForResource("music", ofType: "mp3")
        let soundURL1 = NSURL(fileURLWithPath: path1!)
        
        do {
            try gameMusic = AVAudioPlayer(contentsOfURL: soundURL1)
            gameMusic.prepareToPlay()
        } catch let err as NSError {
            print(err.debugDescription)
        }
        
        let path2 = NSBundle.mainBundle().pathForResource("sword", ofType: "wav")
        let soundURL2 = NSURL(fileURLWithPath: path2!)
        
        do {
            try attackSound = AVAudioPlayer(contentsOfURL: soundURL2)
            attackSound.prepareToPlay()
        } catch let err as NSError {
            print(err.debugDescription)
        }
        
        let path3 = NSBundle.mainBundle().pathForResource("death", ofType: "wav")
        let soundURL3 = NSURL(fileURLWithPath: path3!)
        
        do {
            try deathSound = AVAudioPlayer(contentsOfURL: soundURL3)
            deathSound.prepareToPlay()
        } catch let err as NSError {
            print(err.debugDescription)
        }
        
        musicPlayer()
        player1 = Player(name: "AwesomeGuyLolz", hp: 150, attackPwr: 10)
        player2 = Player(name: "StronkFightzor", hp: 90, attackPwr: 20)
        gameTextOutlet.text = "Welcome to the OOP RPG!"
    }

    @IBAction func resetButtonPressed(sender: AnyObject) {
        resetGame()
    }
    
    @IBAction func player1AttackButtonPressed(sender: AnyObject) {
        
        player2.attemptAttack(player1.attackPwr)
        swordSound()
        disablePlayer2AttackButton()
        gameTextOutlet.text = "\(player1.name) attacks \(player2.name) for \(player1.attackPwr) damage!"
        
        
        if !player2.isAlive {
            hidePlayer2AttackButton()
            gameTextOutlet.text = "\(player1.name) won!"
            stopMusic()
            deathSound.play()
            showResetButton()
        }
        
    }
    
    @IBAction func player2AttackButtonPressed(sender: AnyObject) {
        
        player1.attemptAttack(player2.attackPwr)
        swordSound()
        disablePlayer1AttackButton()
        gameTextOutlet.text = "\(player2.name) attacks \(player1.name) for \(player2.attackPwr) damage!"
        
        
        if !player1.isAlive {
            hidePlayer1AttackButton()
            gameTextOutlet.text = "\(player2.name) won!"
            stopMusic()
            deathSound.play()
            showResetButton()
        }
        
    }
    
    func hidePlayer1AttackButton() {
        player1AttackButtonUI.hidden = true
        player1AttackTextUI.hidden = true
    }
    
    func hidePlayer2AttackButton() {
        player2AttackButtonUI.hidden = true
        player2AttackTextUI.hidden = true
    }
    
    func unhidePlayer1AttackButton() {
        player1AttackButtonUI.hidden = false
        player1AttackTextUI.hidden = false
    }
    
    
    func unhidePlayer2AttackButton() {
        player2AttackButtonUI.hidden = false
        player2AttackTextUI.hidden = false
    }
    
    func disablePlayer1AttackButton() {
        hidePlayer1AttackButton()
        NSTimer.scheduledTimerWithTimeInterval(3.0, target: self, selector: "unhidePlayer1AttackButton", userInfo: nil, repeats: false)
    }
    
    func disablePlayer2AttackButton() {
        hidePlayer2AttackButton()
        NSTimer.scheduledTimerWithTimeInterval(3.0, target: self, selector: "unhidePlayer2AttackButton", userInfo: nil, repeats: false)
    }
    
    func showResetButton() {
        resetButtonUILabel.hidden = false
        resetGameUIText.hidden = false
    }
    
    func resetGame() {
        resetButtonUILabel.hidden = true
        resetGameUIText.hidden = true
        self.viewDidLoad()
    }
    
    func musicPlayer() {
        gameMusic.play()
    }
    
    func stopMusic() {
        gameMusic.stop()
    }
    
    func swordSound() {
        if attackSound.playing {
            attackSound.stop()
        }
        attackSound.play()
    }
        

}