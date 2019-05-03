//
//  ViewController.swift
//  Swift4Manga1
//
//  Created by 佐藤裕紀 on 2019/05/03.
//  Copyright © 2019 Yuki Sato. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var countLabel: UILabel!
    @IBOutlet var runnerImageView: UIImageView!
    
    var imageArray = [UIImage]()
    
    var timer1 = Timer()
    
    var timer2 = Timer()
    
    var countUp = 0
    
    var upDateCount = 0
    
    @IBOutlet var runButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let image0 = UIImage(named: "dash0")
        let image1 = UIImage(named: "dash1")
        let image2 = UIImage(named: "dash2")
        let image3 = UIImage(named: "dash3")
        let image4 = UIImage(named: "dash4")
        let image5 = UIImage(named: "dash5")
        
        imageArray = [image0!,image1!,image2!,image3!,image4!,image5!]
        
        
        
    }
    
    @IBAction func start(_ sender: Any) {
        
        runButton.isEnabled = false
        //タイマースタート
        timer1 = Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true, block: { (timer) in
            //カウントアップ
            self.countUp += 1
            //ラベルに反映
            self.countLabel.text = String(self.countUp)
        })
        
        timer2 = Timer.scheduledTimer(withTimeInterval: 0.1, repeats: true, block: {(timer) in
            
            if(self.upDateCount > 5){
            
                self.upDateCount = 0
                self.runnerImageView.image = UIImage(named: "dash0")
            
                
            }else{
                self.runnerImageView.image = self.imageArray[self.upDateCount]
            }
            
            self.upDateCount += 1
            
        })
        
    }
    
    @IBAction func stop(_ sender: Any) {
        
        runButton.isEnabled = true
        //タイマーストップ
        timer1.invalidate()
        timer2.invalidate()
    }
}

