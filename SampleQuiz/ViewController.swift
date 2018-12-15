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

    @IBAction func tapSystemSound(_ sender: Any) {
        AudioServicesPlaySystemSoundWithCompletion(1000){
            // ここにはシステムサウンドがない終わったあとの処理を記述する
        }
    }
    
}

