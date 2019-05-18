//
//  ViewController.swift
//  Swift5AdMob1
//
//  Created by 佐藤裕紀 on 2019/05/17.
//  Copyright © 2019 Yuki Sato. All rights reserved.
//

import UIKit
import GoogleMobileAds

class ViewController: UIViewController, GADBannerViewDelegate {
    
    let TestID = "ca-app-pub-3940256099942544/2934735716"
    let DEVICE_ID = ""
    let simulatorTest = true

    override func viewDidLoad() {
        super.viewDidLoad()
        
        var admobView = GADBannerView()
        
        admobView = GADBannerView(adSize: kGADAdSizeBanner)
        
        admobView.frame.origin = CGPoint(x: 0, y: self.view.frame.size.height - admobView.frame.height)
        
        admobView.frame.size = CGSize(width: self.view.frame.width, height: admobView.frame.height)
        
        admobView.adUnitID = TestID
        admobView.delegate = self
        admobView.rootViewController = self
        
        let admobRequest = GADRequest()
        
        if simulatorTest == true {
            admobRequest.testDevices = [kGADSimulatorID]
        }else{
            admobRequest.testDevices = [DEVICE_ID]
        }
        
        admobView.load(admobRequest)
        
        self.view.addSubview(admobView)
        
    }

    @IBAction func back(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
        
    
    
}

