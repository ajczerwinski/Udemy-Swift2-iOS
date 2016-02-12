//
//  ViewController.swift
//  My Little Monster Practice
//
//  Created by Allen Czerwinski on 2/10/16.
//  Copyright © 2016 Allen Czerwinski. All rights reserved.
//

import UIKit
import AVFoundation
import SpriteKit

class ViewController: UIViewController {
    @IBOutlet weak var introBackgroundImage: UIImageView!

    @IBOutlet weak var caveBackgroundImage: UIImageView!
    
    @IBOutlet weak var caveGroundImage: UIImageView!
    
    @IBOutlet weak var livesPanelImage: UIImageView!
    @IBOutlet weak var monsterImg: MonsterImg!
    
    @IBOutlet weak var monsterImg2: MonsterImg2!
    
    @IBOutlet weak var foodImg: DragImg!
    @IBOutlet weak var heartImg: DragImg!
    
    @IBOutlet weak var penalty1Img: UIImageView!
    @IBOutlet weak var penalty2Img: UIImageView!
    @IBOutlet weak var penalty3Img: UIImageView!
    @IBOutlet weak var obedienceImg: DragImg!
    @IBOutlet weak var resetButtonOutlet: UIButton!
    @IBOutlet weak var resetLabelOutlet: UILabel!
    
    @IBOutlet weak var introChooseMonsterOutlet: UIStackView!
    
    
    let DIM_ALPHA: CGFloat = 0.2
    let OPAQUE: CGFloat = 1.0
    let MAX_PENALTIES = 3
    
    var penalties = 0
    var timer: NSTimer!
    var monsterHappy = false
    var monsterSelected = 0
    var currentItem: UInt32 = 0
    
    var musicPlayer: AVAudioPlayer!
    var sfxBite: AVAudioPlayer!
    var sfxHeart: AVAudioPlayer!
    var sfxDeath: AVAudioPlayer!
    var sfxSkull: AVAudioPlayer!
    var sfxObedience: AVAudioPlayer!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setGameIntroUI()
        
        NSNotificationCenter.defaultCenter().addObserver(self, selector: "itemDroppedOnCharacter:", name: "onTargetDropped", object: nil)
        
        do {
            
            // Instead of using one line, could use 3 as follows:
            // let resourcePath = NSBundle.mainBundle().pathForResource("cave-music", ofType: "mp3")!
            // let url = NSURL(fileURLWithPath: resourcePath)
            // try musicPlayer = AVAudioPlayer(contentsOfURL: url)
            try musicPlayer = AVAudioPlayer(contentsOfURL: NSURL(fileURLWithPath: NSBundle.mainBundle().pathForResource("cave-music", ofType: "mp3")!))
            
            try sfxBite = AVAudioPlayer(contentsOfURL: NSURL(fileURLWithPath: NSBundle.mainBundle().pathForResource("bite", ofType: "wav")!))
            
            try sfxHeart = AVAudioPlayer(contentsOfURL: NSURL(fileURLWithPath: NSBundle.mainBundle().pathForResource("heart", ofType: "wav")!))
            
            try sfxDeath = AVAudioPlayer(contentsOfURL: NSURL(fileURLWithPath: NSBundle.mainBundle().pathForResource("death", ofType: "wav")!))
            
            try sfxSkull = AVAudioPlayer(contentsOfURL: NSURL(fileURLWithPath: NSBundle.mainBundle().pathForResource("skull", ofType: "wav")!))
            
            try sfxObedience = AVAudioPlayer(contentsOfURL: NSURL(fileURLWithPath: NSBundle.mainBundle().pathForResource("obedience", ofType: "mp3")!))
            
            musicPlayer.prepareToPlay()
            
            
            sfxBite.prepareToPlay()
            sfxHeart.prepareToPlay()
            sfxDeath.prepareToPlay()
            sfxSkull.prepareToPlay()
            sfxObedience.prepareToPlay()
            
        } catch let err as NSError {
            print(err.debugDescription)
        }
    }
    
    func playGame() {
        if monsterSelected == 1 {
            foodImg.dropTarget = monsterImg
            heartImg.dropTarget = monsterImg
            obedienceImg.dropTarget = monsterImg
            
            caveBackgroundImage.hidden = false
            caveGroundImage.hidden = false
            
            monsterImg.hidden = false
            
            
        } else {
            foodImg.dropTarget = monsterImg2
            heartImg.dropTarget = monsterImg2
            obedienceImg.dropTarget = monsterImg2
            monsterImg2.hidden = false
        }
        
        penalty1Img.alpha = DIM_ALPHA
        penalty2Img.alpha = DIM_ALPHA
        penalty3Img.alpha = DIM_ALPHA
        
        introChooseMonsterOutlet.hidden = true
        introBackgroundImage.hidden = true
        livesPanelImage.hidden = false
        
        heartImg.hidden = false
        foodImg.hidden = false
        obedienceImg.hidden = false
        
        penalty1Img.hidden = false
        penalty2Img.hidden = false
        penalty3Img.hidden = false
        
        musicPlayer.play()
        startTimer()
    }
    
    func setGameIntroUI() {
        introChooseMonsterOutlet.hidden = false
        introBackgroundImage.hidden = false
        
        monsterImg.hidden = true
        monsterImg2.hidden = true
        
        heartImg.hidden = true
        foodImg.hidden = true
        obedienceImg.hidden = true
        
        penalty1Img.hidden = true
        penalty2Img.hidden = true
        penalty3Img.hidden = true
        
        caveBackgroundImage.hidden = true
        caveGroundImage.hidden = true
        livesPanelImage.hidden = true
        
        resetButtonOutlet.hidden = true
        resetLabelOutlet.hidden = true
    }
    
    
    func itemDroppedOnCharacter(notif: AnyObject) {
        monsterHappy = true
        startTimer()
        
        foodImg.alpha = DIM_ALPHA
        foodImg.userInteractionEnabled = false
        heartImg.alpha = DIM_ALPHA
        heartImg.userInteractionEnabled = false
        obedienceImg.alpha = DIM_ALPHA
        obedienceImg.userInteractionEnabled = false
        
        if currentItem == 0 {
            sfxHeart.play()
        } else if currentItem == 1 {
            sfxBite.play()
        } else {
            sfxObedience.play()
        }
    }

//    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
//        print("I am accessing the touch screen")
//    }
    
    func startTimer() {
        if timer != nil {
            timer.invalidate()
        }
        
        timer = NSTimer.scheduledTimerWithTimeInterval(3.0, target: self, selector: "changeGameState", userInfo: nil, repeats: true)
    }
    
    func changeGameState() {
        
        if !monsterHappy {
            penalties++
            
            sfxSkull.play()
            
            if penalties == 1 {
                penalty1Img.alpha = OPAQUE
                penalty2Img.alpha = DIM_ALPHA
            } else if penalties == 2 {
                penalty2Img.alpha = OPAQUE
                penalty3Img.alpha = DIM_ALPHA
            } else if penalties >= 3 {
                penalty3Img.alpha = OPAQUE
            } else {
                penalty1Img.alpha = DIM_ALPHA
                penalty2Img.alpha = DIM_ALPHA
                penalty3Img.alpha = DIM_ALPHA
            }
            
            if penalties >= MAX_PENALTIES {
                gameOver()
            }
        }
        
        let rand = arc4random_uniform(3)
        
        if rand == 0 {
            foodImg.alpha = DIM_ALPHA
            foodImg.userInteractionEnabled = false
            
            obedienceImg.alpha = DIM_ALPHA
            obedienceImg.userInteractionEnabled = false
            
            heartImg.alpha = OPAQUE
            heartImg.userInteractionEnabled = true
        } else if rand == 1 {
            heartImg.alpha = DIM_ALPHA
            heartImg.userInteractionEnabled = false
            
            obedienceImg.alpha = DIM_ALPHA
            obedienceImg.userInteractionEnabled = false
            
            foodImg.alpha = OPAQUE
            foodImg.userInteractionEnabled = true
        } else {
            foodImg.alpha = DIM_ALPHA
            foodImg.userInteractionEnabled = false
            
            obedienceImg.alpha = OPAQUE
            obedienceImg.userInteractionEnabled = true
            
            heartImg.alpha = DIM_ALPHA
            heartImg.userInteractionEnabled = false
        }
        
        currentItem = rand
        monsterHappy = false
        
    }
    
    func gameOver() {
        if monsterSelected == 1 {
            monsterImg.playDeathAnimation()
        } else {
            monsterImg2.playDeathAnimation()
        }
        timer.invalidate()
        sfxDeath.play()
        musicPlayer.stop()
        foodImg.alpha = DIM_ALPHA
        foodImg.userInteractionEnabled = false
        heartImg.alpha = DIM_ALPHA
        heartImg.userInteractionEnabled = false
        obedienceImg.alpha = DIM_ALPHA
        obedienceImg.userInteractionEnabled = false
        resetButtonOutlet.hidden = false
        resetLabelOutlet.hidden = false
    }
    
    func resetGame() {
        if monsterSelected == 1 {
            monsterImg.playIdleAnimation()
        } else {
            monsterImg2.playIdleAnimation()
        }
        timer.invalidate()
        penalty1Img.alpha = DIM_ALPHA
        penalty2Img.alpha = DIM_ALPHA
        penalty3Img.alpha = DIM_ALPHA
        monsterHappy = true
        self.changeGameState()
        
        monsterImg.playIdleAnimation()
        penalties = 0
        resetButtonOutlet.hidden = true
        resetLabelOutlet.hidden = true
        musicPlayer.play()
        startTimer()
        
    }
    
    @IBAction func resetButtonPressed(sender: AnyObject) {
        resetGame()
    }
    
    @IBAction func chooseMonsterButtonPressed(sender: AnyObject) {
        monsterSelected = sender.tag
        print(monsterSelected)
        playGame()
    }

}

