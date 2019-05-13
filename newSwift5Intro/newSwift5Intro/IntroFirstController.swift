//
//  ViewController.swift
//  newSwift5Intro
//
//  Created by 佐藤裕紀 on 2019/05/13.
//  Copyright © 2019 Yuki Sato. All rights reserved.
//

import UIKit
import PGEZTransition

class IntroFirstController: UIViewController {
    
    @IBOutlet var transformView: PGTransformView!
    @IBOutlet var title1: PGTransformLabel!
    @IBOutlet var title2: PGTransformLabel!
    
    @IBOutlet var image1: PGTransformImageView!
    
    @IBOutlet var nextButton: UIButton!
    
    private var transition: PGTransformPushTransition!
    
    //遷移先のこと
    private lazy var nextVc: IntroSecondController = {
        return UIStoryboard.init(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "IntroSecondController") as! IntroSecondController
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.transitionSetUp()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func onNext(_ sender: Any) {
        self.transition.showTransformViewController()
    }
    
}

extension IntroFirstController{
    func transitionSetUp(){
        self.transition = PGTransformPushTransition.init(target: self, showing: self.nextVc)
        
        transformView.setStartAlpha(0.0, start: 0.0, duration: 1.0).setEndAlpha(0.0, start: 0.0, duration: 1.0)
        //duration:何秒かけてアニメーションするか
        
        image1.setStartTransform(.rateX(1.0), start: 0.0, duration: 1.0).setStartAlpha(1.0, start: 0.0, duration: 1.0).setEndTransform(.rateX(-1.0), start: 0.0, duration: 1.0).setEndAlpha(1.0, start: 0.0, duration: 1.0)
        
        title1.setStartTransform(.rateX(0.3), start: 0.0, duration: 1.0).setStartAlpha(0.0, start: 0.0, duration: 1.0).setEndTransform(.zero, start: 0.0, duration: 1.0).setEndAlpha(1.0, start: 0.0, duration: 0.3)
        
        title2.setStartTransform(.rateX(0.5), start: 0.0, duration: 1.0).setStartAlpha(0.0, start: 0.0, duration: 1.0).setEndTransform(.zero, start: 0.0, duration: 1.0).setEndAlpha(0.0, start: 0.0, duration: 0.3)
    }
}
