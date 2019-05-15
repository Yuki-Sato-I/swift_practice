//
//  SettingViewController.swift
//  Swift5wonderlist
//
//  Created by 佐藤裕紀 on 2019/05/13.
//  Copyright © 2019 Yuki Sato. All rights reserved.
//

import UIKit

class SettingViewController: UIViewController {

    @IBOutlet var sv: UIScrollView!
    @IBOutlet var backImageView: UIImageView!
    
    var vc = UIView()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        vc.frame = CGRect(x: 0, y: 0, width: 800, height: 80)
        
        for i in 0..<10 {
            let button: UIButton = UIButton()
            button.tag = i
            button.frame = CGRect(x: i*80, y: 0, width: 80, height: 80)
            
            let buttonImage: UIImage = UIImage(named: String(i))!
            button.setImage(buttonImage, for: .normal)
            button.addTarget(self, action: #selector(selectedImage), for: .touchUpInside)
            
            vc.addSubview(button)
        }
        
        sv.addSubview(vc)
        sv.contentSize = vc.bounds.size
    }
    
    @objc func selectedImage(sender: UIButton){
        //画像をUIIMageViewの反映する
        backImageView.image = UIImage(named: String(sender.tag))
        
        //buttonのtag情報をアプリ内へ保存
        UserDefaults.standard.set(String(sender.tag), forKey: "image")
    }

    @IBAction func back(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    

}
