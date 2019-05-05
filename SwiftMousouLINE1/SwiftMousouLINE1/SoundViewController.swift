//
//  SoundViewController.swift
//  SwiftMousouLINE1
//
//  Created by 佐藤裕紀 on 2019/05/05.
//  Copyright © 2019 Yuki Sato. All rights reserved.
//

import UIKit
import AVFoundation

class SoundViewController: UIViewController {

    @IBOutlet var imageView2: UIImageView!
    @IBOutlet var timeLabel: UILabel!
    @IBOutlet var preStopButton: UIButton!
    @IBOutlet var preStartButton: UIButton!
    @IBOutlet var stopButton: UIButton!
    
    
    var audioPlayer: AVAudioPlayer!
    var count = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        stopButton.isEnabled = false
        preStopButton.isEnabled = true
        preStartButton.isEnabled = true

        
        //画面が初めに表示された時は非表示
        imageView2.isHidden = true
        timeLabel.isHidden = true
        
        //音声(callMusic.mp3)を再生する
        if let url = Bundle.main.url(forResource: "callMusic", withExtension: "mp3"){
            do {
                audioPlayer = try AVAudioPlayer(contentsOf: url)
                audioPlayer?.play()
            } catch {
                audioPlayer = nil
            }
        }else{
            fatalError("Url is nil.")
        }
        
    }
    
    @IBAction func tap(_ sender: Any) {
        //imageView2を非表示を表示にかえる
        imageView2.isHidden = false
        timeLabel.isHidden = false
        
        stopButton.isEnabled = true
        preStopButton.isEnabled = false
        preStartButton.isEnabled = false
        //タイマーをスタート。ラベルに表示
        Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(timerCountUp), userInfo: nil, repeats: true)
        
        
        //baby.mp3の音声再生
        if let url = Bundle.main.url(forResource: "baby", withExtension: "mp3"){
            do {
                audioPlayer = try AVAudioPlayer(contentsOf: url)
                audioPlayer?.play()
            } catch {
                audioPlayer = nil
            }
        }else{
            fatalError("Url is nil.")
        }
    }
    
    @objc func timerCountUp(){
        count += 1
        timeLabel.text = String(count)
    }
    
    @IBAction func deny(_ sender: Any) {
    
        //電源をきる
        
        //音声(callMusic.mp3)のstop
        audioPlayer.stop()
        //画面をViewControllerへ戻す（遷移される）
        dismiss(animated: true, completion: nil)
    }
    
}
