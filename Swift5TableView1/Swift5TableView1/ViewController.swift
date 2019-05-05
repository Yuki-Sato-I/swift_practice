//
//  ViewController.swift
//  Swift5TableView1
//
//  Created by 佐藤裕紀 on 2019/05/05.
//  Copyright © 2019 Yuki Sato. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var label: UILabel!
    
    var box = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func countUp(_ sender: Any) {
        
        box += 1
        
        label.text = String(box)
        
        if(box > 10){
            let ViewController2: TableViewController2 = self.storyboard?.instantiateViewController(withIdentifier: "next") as! TableViewController2
            
           ViewController2.count = box
            self.navigationController?.pushViewController(ViewController2, animated: true)
            
        }
        
    }
    
}

