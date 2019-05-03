//
//  ViewController.swift
//  Swift5ImageView
//
//  Created by 佐藤裕紀 on 2019/05/03.
//  Copyright © 2019 Yuki Sato. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var imageView: UIImageView!
    
    var count = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func changeImage(_ sender: Any) {
        
        count += 1
        if(count >= 20){
            count = 0
        }
        if (count < 10) {
            imageView.image = UIImage(named: "beach")
            
        }else{
            imageView.image = UIImage(named: "background")
        }

    }
}

