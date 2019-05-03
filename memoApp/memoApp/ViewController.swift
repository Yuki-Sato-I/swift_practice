//
//  ViewController.swift
//  memoApp
//
//  Created by 佐藤裕紀 on 2019/04/28.
//  Copyright © 2019 yuki.inc. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextViewDelegate{
    
    @IBOutlet weak var textView: UITextView!
    
    
    override func viewDidLoad() {//画面が表示された時に実行されるもの
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        textView.delegate = self
        
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        textView.text = appDelegate.lastText
        
        let d: String? = ""
        if(d?.isEmpty)! {
            //alert
        }
        
    }
    
    func textViewDidChange(_ textView: UITextView) {
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
            appDelegate.lastText = textView.text
    }

    
    
}

