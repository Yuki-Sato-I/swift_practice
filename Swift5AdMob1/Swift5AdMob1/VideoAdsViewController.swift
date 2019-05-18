//
//  VideoAdsViewController.swift
//  Swift5AdMob1
//
//  Created by 佐藤裕紀 on 2019/05/17.
//  Copyright © 2019 Yuki Sato. All rights reserved.
//

import UIKit
import GoogleMobileAds

class VideoAdsViewController: UIViewController, GADRewardBasedVideoAdDelegate {

    let AdMobID = "ca-app-pub-1873243555700586/7369342762"
    
    let TEST_ID = "ca-app-pub-3940256099942544/1712485313"
    
    var AdUnitID: String? = nil
    
    let simulation = true
    
    var adRequestInProgress = false
    var adReady = false
    
    @IBOutlet var statusLabel: UILabel!
    
    var rewardBasedVideo: GADRewardBasedVideoAd?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        if simulation {
            AdUnitID = TEST_ID
        }else{
            AdUnitID = AdMobID
        }
        
        rewardBasedVideo = GADRewardBasedVideoAd.sharedInstance()
        rewardBasedVideo?.delegate = self
        
        setUp()
        
        // Do any additional setup after loading the view.
    }
    
    func setUp(){
        statusLabel.text = "準備中"
        
        if !adRequestInProgress && rewardBasedVideo?.isReady == false{
            rewardBasedVideo?.load(GADRequest(), withAdUnitID: AdUnitID!)
            
            adRequestInProgress = true
        }else{
            print("error!!!!")
        }
    }

    @IBAction func play(_ sender: Any) {
        if GADRewardBasedVideoAd.sharedInstance().isReady && adReady {
            GADRewardBasedVideoAd.sharedInstance().present(fromRootViewController: self)
            adReady = false
        }else{
            print("error>>>???")
        }
    }
    
    func rewardBasedVideoAd(_ rewardBasedVideoAd: GADRewardBasedVideoAd, didFailToLoadWithError error: Error) {
        adRequestInProgress = false
        statusLabel.text = "失敗"
    }
    
    func rewardBasedVideoAdDidReceive(_ rewardBasedVideoAd: GADRewardBasedVideoAd) {
        adRequestInProgress = false
        statusLabel.text = "準備完了"
        adReady = true
    }
    
    func rewardBasedVideoAd(_ rewardBasedVideoAd: GADRewardBasedVideoAd, didRewardUserWith reward: GADAdReward) {
        
    }


}
