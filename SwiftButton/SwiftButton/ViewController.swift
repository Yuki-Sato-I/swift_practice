//
//  ViewController.swift
//  SwiftButton
//
//  Created by 佐藤裕紀 on 2019/05/02.
//  Copyright © 2019 Yuki Sato. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var count = 5
    
    var mozi = "aiueo"

    override func viewDidLoad() { //画面が表示される時に呼ばれるもの
        super.viewDidLoad()
        count = 10
        
        print(count)
        
    }

    @IBAction func tap(_ sender: Any) {
        
    }
    
}

