//
//  AddViewController.swift
//  Swift5Todo1
//
//  Created by 佐藤裕紀 on 2019/05/06.
//  Copyright © 2019 Yuki Sato. All rights reserved.
//

import UIKit

class AddViewController: UIViewController, UITextFieldDelegate {
    
    var array = [String]()

    @IBOutlet var textField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        textField.delegate = self
        // Do any additional setup after loading the view.
    }
    
    @IBAction func add(_ sender: Any) {
        //現在の配列を取り出す
        
        if UserDefaults.standard.object(forKey: "todo") != nil{
            array = UserDefaults.standard.object(forKey: "todo") as! [String]
        }
        
        array.append(textField.text!)
        
        UserDefaults.standard.set(array, forKey: "todo")
        
        self.navigationController?.popViewController(animated: true)
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
}
