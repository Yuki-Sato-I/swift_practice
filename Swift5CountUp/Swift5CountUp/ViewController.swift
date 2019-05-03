//
//  ViewController.swift
//  Swift5CountUp
//
//  Created by 佐藤裕紀 on 2019/05/03.
//  Copyright © 2019 Yuki Sato. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var label: UILabel!
    
    var count = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func plus(_ sender: Any) {
        count += 1
        label.text = String(count)
    }
    
    @IBAction func minus(_ sender: Any) {
        count -= 1
        if (count < 0){
            count = 0
        }
        label.text = String(count)
    }
    
}

