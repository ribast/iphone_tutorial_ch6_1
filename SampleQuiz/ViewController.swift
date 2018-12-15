//
//  ViewController.swift
//  SampleQuiz
//
//  Created by 田島諒 on 2018/12/15.
//  Copyright © 2018 Ribast. All rights reserved.
//

import UIKit
import AudioToolbox

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    // システムサウンド発生
    @IBAction func tapSystemSound(_ sender: Any) {
        AudioServicesPlaySystemSoundWithCompletion(1000){
            // ここにはシステムサウンドが鳴り終わったあとの処理を記述する
        }
    }
    
    // カスタムサウンド発生
    @IBAction func tapCustomSound(_ sender: Any) {
        // サウンドURL取得
        let soundUrl = Bundle.main.url(forResource: "button83", withExtension: "mp3")
        
        // カスタムID設定
        var soundId: SystemSoundID = 0
        AudioServicesCreateSystemSoundID(soundUrl! as CFURL, &soundId)
        //カスタムIDを用いて音を鳴らす
        AudioServicesPlaySystemSoundWithCompletion(soundId){
            // ここにはカスタムサウンドが鳴り終わったあとの処理を記述する
        }
    }
    
    // バイブレーション発生
    @IBAction func tapVibration(_ sender: Any) {
        AudioServicesPlaySystemSoundWithCompletion(kSystemSoundID_Vibrate){
            // ここにはバイブレーションが終わったあとの処理を記述する
        }
    }
}

