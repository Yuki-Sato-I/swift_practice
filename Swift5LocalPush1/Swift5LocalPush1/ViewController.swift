//
//  ViewController.swift
//  Swift5LocalPush1
//
//  Created by 佐藤裕紀 on 2019/05/06.
//  Copyright © 2019 Yuki Sato. All rights reserved.
//

import UIKit
import UserNotifications

class ViewController: UIViewController {

    @IBOutlet var nameTextField: UITextField!
    @IBOutlet var textField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func push(_ sender: Any) {
        let content = UNMutableNotificationContent()
        content.title = nameTextField.text!
        content.body = textField.text!
        content.sound = UNNotificationSound.default
        
        let trigger = UNTimeIntervalNotificationTrigger(timeInterval: 5, repeats: false)
        let request = UNNotificationRequest(identifier: "ID", content: content, trigger: trigger)
        
        UNUserNotificationCenter.current().add(request, withCompletionHandler: nil)
    }
    
}

