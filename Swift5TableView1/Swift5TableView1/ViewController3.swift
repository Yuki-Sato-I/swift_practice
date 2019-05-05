//
//  ViewController3.swift
//  Swift5TableView1
//
//  Created by 佐藤裕紀 on 2019/05/05.
//  Copyright © 2019 Yuki Sato. All rights reserved.
//

import UIKit

class ViewController3: UIViewController {
    
    var count2 = 0
    @IBOutlet var label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        label.text = String(count2)
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
