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
        /*
        // 背景色変更
        let backView = alert.view.subviews.last?.subviews.last
        backView?.layer.cornerRadius = 20.0
        backView?.backgroundColor = UIColor(red: 37/255, green: 37/255, blue: 37/255, alpha: 1)
        */
        
        // 1. タイトルのフォント/色/サイズを変更
        let title = "title"
        let titleMutableString = NSMutableAttributedString(string: title, attributes: [NSAttributedString.Key.font:UIFont(name: "Georgia", size: 18.0)!])
        // 色の変更
        titleMutableString.addAttribute(NSAttributedString.Key.foregroundColor, value: UIColor.blue /*UIColor(red: 187/255, green: 187/255, blue: 187/255, alpha: 1)*/, range: NSRange(location: 0, length: title.count))
        alert.setValue(titleMutableString, forKey: "attributedTitle")
        
        // 2. メッセージのフォント/色/サイズを変更
        let message = "test message \n テストメッセージ \n てすとめっせーじ "
        let messageMutableString = NSMutableAttributedString(string: message, attributes: [NSAttributedString.Key.font:UIFont(name: "Georgia", size: 24.0)!])
        
        // 色の変更
        messageMutableString.addAttribute(NSAttributedString.Key.foregroundColor, value: UIColor.green /*UIColor(red: 187/255, green: 187/255, blue: 187/255, alpha: 1)*/, range: NSRange(location: 0, length: message.count))
        alert.setValue(messageMutableString, forKey: "attributedMessage")
        
        
        let action = UIAlertAction(title:  "OK", style: .default, handler: nil)
        alert.addAction(action)
        self.present(alert, animated: true, completion: nil)
    }
    
}

