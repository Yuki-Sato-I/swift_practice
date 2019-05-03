//
//  NextViewController.swift
//  SwiftButton
//
//  Created by 佐藤裕紀 on 2019/05/03.
//  Copyright © 2019 Yuki Sato. All rights reserved.
//

import UIKit

class NextViewController: UIViewController {

    @IBOutlet var changeLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    
    @IBAction func change(_ sender: Any) {
        changeLabel.text = "暗号が解除されました."
    }
    
}
