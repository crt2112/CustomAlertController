//
//  ViewController.swift
//  CustomAlertController
//
//  Created by beakhand on 2018/10/25.
//  Copyright © 2018年 beakhand. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func onButtonTouchUp(_ sender: Any) {
        
        
        let alert = UIAlertController(title: "Title", message: "Message", preferredStyle: .alert)
        
        
        // メッセージのフォント/色/サイズを変更
        let message = "test message"
        let messageMutableString = NSMutableAttributedString(string: message, attributes: [NSAttributedString.Key.font:UIFont(name: "Georgia", size: 24.0)!])
        // 色の変更
        messageMutableString.addAttribute(NSAttributedString.Key.foregroundColor, value: UIColor.gray, range: NSRange(location: 0, length: message.count))
        alert.setValue(messageMutableString, forKey: "attributedMessage")
        
        self.present(alert, animated: true, completion: nil)
    }
    
}

