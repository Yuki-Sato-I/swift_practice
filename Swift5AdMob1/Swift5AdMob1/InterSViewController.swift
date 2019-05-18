//
//  InterSViewController.swift
//  Swift5AdMob1
//
//  Created by 佐藤裕紀 on 2019/05/17.
//  Copyright © 2019 Yuki Sato. All rights reserved.
//

import UIKit
import GoogleMobileAds

class InterSViewController: UIViewController, GADInterstitialDelegate {

    let admobID = "ca-app-pub-1873243555700586/1767987136"
    
    let SIMULATOR_ID = kGADSimulatorID
    
    let DIVICE_TEST_ID = ""
    
    let simulatorTest = true
    
    let delay = 3.5
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let interstitial = GADInterstitial(adUnitID: admobID)
        
        let request = GADRequest()
        
        request.testDevices = [SIMULATOR_ID]
        
        interstitial.load(request)
        
        DispatchQueue.main.asyncAfter(deadline: .now() + delay){
            self.showAdMob(interstitial: interstitial)
        }
        // Do any additional setup after loading the view.
    }

    func showAdMob(interstitial: GADInterstitial){
        if interstitial.isReady{
            interstitial.present(fromRootViewController: self)
        }
    }
    
    @IBAction func back(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
}
