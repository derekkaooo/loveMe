//
//  ViewController.swift
//  loveMe
//
//  Created by Derek on 2018/8/5.
//  Copyright © 2018年 Derek. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    @IBOutlet weak var f1: UIImageView!
    @IBOutlet weak var f2: UIImageView!
    @IBOutlet weak var f3: UIImageView!
    @IBOutlet weak var f4: UIImageView!
    @IBOutlet weak var f5: UIImageView!
    @IBOutlet weak var f6: UIImageView!
    @IBOutlet weak var f7: UIImageView!
    @IBOutlet weak var heart: UIImageView!
    
    var number = 7
    var isLoveMe:Bool?
    let loveMe = AVSpeechUtterance(string: "愛我")
    let notLoveMe = AVSpeechUtterance(string: "不愛我")
    let synthesizer = AVSpeechSynthesizer()
    
    
    @IBAction func loveMeOrNot(_ sender: UIButton) {
        number -= 1
        
            if number == 7{
                f1.isHidden = true
                isLoveMe = true
            }else if number == 6{
                f2.isHidden = true
                isLoveMe = false
            }else if number == 5{
                f3.isHidden = true
                isLoveMe = true
            }else if number == 4{
                f4.isHidden = true
                isLoveMe = false
            }else if number == 3{
                f5.isHidden = true
                isLoveMe = true
            }else if number == 2{
                f6.isHidden = true
                isLoveMe = false
            }else if number == 1{
                f7.isHidden = true
                isLoveMe = true
                heart.isHidden = false
            }
        
        if isLoveMe == true{
            synthesizer.speak(loveMe)
        }else{
            synthesizer.speak(notLoveMe)
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        number = Int.random(in: 8...9)
        loveMe.voice = AVSpeechSynthesisVoice(language: "zh-TW")
        notLoveMe.voice = AVSpeechSynthesisVoice(language: "zh-TW")
        
        // Do any additional setup after loading the view, typically from a nib.
    }


}

