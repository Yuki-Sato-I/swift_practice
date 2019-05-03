//
//  ViewController.swift
//  memoapp2
//
//  Created by 佐藤裕紀 on 2019/05/01.
//  Copyright © 2019 yuki.inc. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextViewDelegate{
    
    @IBOutlet weak var textView: UITextView!
    
    @IBOutlet weak var saveButton: UIBarButtonItem!
    

    
    
    
    override func viewDidLoad() {//画面が表示された時に実行されるもの
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        textView.delegate = self
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        textView.text = appDelegate.lastText
        print("testtest111")
    }
    
    @IBAction func saveButtonTapped(_ sender: UIBarButtonItem) {
        print(textView.text!.count)
        
        let alert = UIAlertController(title: "",message: "", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
        
        if(textView.text!.count > 10){
            let appDelegate = UIApplication.shared.delegate as! AppDelegate
            appDelegate.lastText = textView.text
            alert.title = "成功"
            alert.message = "保存しました"
        }else{
            alert.title = "警告"
            alert.message = "10文字以上入力してください"
        }
        self.present(alert, animated: true)

    }
    
    /*func textViewDidChange(_ textView: UITextView) {
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        appDelegate.lastText = textView.text
    }*/
    
    
    
}
