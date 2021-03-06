//
//  IntroThirdController.swift
//  newSwift5Intro
//
//  Created by 佐藤裕紀 on 2019/05/13.
//  Copyright © 2019 Yuki Sato. All rights reserved.
//

import UIKit
import PGEZTransition

class IntroThirdController: UIViewController {
    
    @IBOutlet var transformView: PGTransformView!
    @IBOutlet var title1: PGTransformLabel!
    @IBOutlet var title2: PGTransformLabel!
    
    @IBOutlet var image1: PGTransformImageView!
    
    @IBOutlet var jumpButton: UIButton!
    @IBOutlet var nextButton: UIButton!
    
    private var transition: PGTransformPushTransition!
    
    //遷移先のこと
    lazy var alert: UIAlertController = {
        
        let alert = UIAlertController.init(title: nil, message: "始めよう!", preferredStyle: .alert)
        
        alert.addAction(UIAlertAction.init(title: "OK", style: .default, handler: nil))
        
        return alert
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.transitionSetUp()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func onNext(_ sender: Any) {
        self.present(self.alert, animated: true, completion: nil)
    }
    
    @IBAction func onBuck(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
}

extension IntroThirdController{
    func transitionSetUp(){
        
        transformView.setStartAlpha(0.0, start: 0.0, duration: 1.0).setEndAlpha(0.0, start: 0.0, duration: 1.0)
        //duration:何秒かけてアニメーションするか
        
        image1.setStartTransform(.rateX(1.0), start: 0.0, duration: 1.0).setStartAlpha(1.0, start: 0.0, duration: 1.0).setEndTransform(.rateX(-1.0), start: 0.0, duration: 1.0).setEndAlpha(1.0, start: 0.0, duration: 1.0)
        
        title1.setStartTransform(.rateX(0.3), start: 0.0, duration: 1.0).setStartAlpha(0.0, start: 0.0, duration: 1.0).setEndTransform(.zero, start: 0.0, duration: 1.0).setEndAlpha(1.0, start: 0.0, duration: 0.3)
        
        title2.setStartTransform(.rateX(0.5), start: 0.0, duration: 1.0).setStartAlpha(0.0, start: 0.0, duration: 1.0).setEndTransform(.zero, start: 0.0, duration: 1.0).setEndAlpha(0.0, start: 0.0, duration: 0.3)
    }
    
    
}
