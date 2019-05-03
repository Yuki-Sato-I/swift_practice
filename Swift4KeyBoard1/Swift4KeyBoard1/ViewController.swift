//
//  ViewController.swift
//  Swift4KeyBoard1
//
//  Created by 佐藤裕紀 on 2019/05/03.
//  Copyright © 2019 Yuki Sato. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet var mailTextField: UITextField!
    
    @IBOutlet var passwordTextField: UITextField!
    
    @IBOutlet var resultLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        mailTextField.delegate = self
        passwordTextField.delegate = self
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        //キーボードを閉じる. returnを押したらか発火
        textField.resignFirstResponder()
        return true
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        //どっかタッチしたら発火
        
        mailTextField.resignFirstResponder()
        passwordTextField.resignFirstResponder()
    }
    
    @IBAction func signIn(_ sender: Any) {
        resultLabel.text = mailTextField.text! + " " + passwordTextField.text!
    }
    
}

