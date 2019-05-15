//
//  NextViewController.swift
//  Swift5wonderlist
//
//  Created by 佐藤裕紀 on 2019/05/13.
//  Copyright © 2019 Yuki Sato. All rights reserved.
//

import UIKit

class NextViewController: UIViewController, UITextViewDelegate {
    
    var selectedNumber: Int = 0
    @IBOutlet var textView: UITextView!
    
    var screenShotImage: UIImage = UIImage()
    
    //配列
    var titleArray: Array = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        textView.delegate = self
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        //titleArrayをアプリ内から取り出す
        if UserDefaults.standard.object(forKey: "array") != nil {
            titleArray = UserDefaults.standard.object(forKey: "array") as! [String]
            
            textView.text = titleArray[selectedNumber]
        }
        
    }
    
    //touchしてキーボードを閉じる
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        //キーボードが出た状態であれば
        if textView.isFirstResponder == true {
            textView.resignFirstResponder()
        }
    }
    
    //screenshotをとる
    func takeScreenShot(){
        let rect = CGRect(x: textView.frame.origin.x, y: textView.frame.origin.y, width: textView.frame.width, height: textView.frame.height)
        
        
        
        UIGraphicsBeginImageContextWithOptions(rect.size, false, 0.0)
        
        textView.drawHierarchy(in: rect, afterScreenUpdates: true)
        
        screenShotImage = UIGraphicsGetImageFromCurrentImageContext()!
        
        UIGraphicsEndImageContext()
        

    }
    
    @IBAction func shareLINE(_ sender: Any) {
        
        takeScreenShot()
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 1.0) {
            
            
            let pastBoard: UIPasteboard = UIPasteboard.general
            
            pastBoard.setData(self.screenShotImage.jpegData(compressionQuality: 0.75)!, forPasteboardType: "public.png")
            
            
            let lineUrlString: String = String(format: "line://msg/image/%@", pastBoard.name as CVarArg)
            
            UIApplication.shared.open(NSURL(string: lineUrlString)! as URL)
            
        }
        
    }
    
}
