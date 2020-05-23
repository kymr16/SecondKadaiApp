//
//  ViewController.swift
//  SecondKadaiApp
//
//  Created by 吉田 玲子 on 2020/05/24.
//  Copyright © 2020 reiko.yoshida. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITextFieldDelegate {
    
    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var submitButton: UIButton!
    
    var userName:String = ""

    override func viewDidLoad() {
        super.viewDidLoad()
        //MEMO:ここの書き方はこれで良いのでしょうか・・
        textField.addTarget(self, action: #selector(self.textFieldDidEndEditing(_:)),for: UIControl.Event.editingChanged)
    }

    //フォーム入力完了後
    //MEMO: @objcがついてしまうのですが古い書き方なのでしょうか
    @objc func textFieldDidEndEditing(_ textField: UITextField) {
        if textField.text == "" {
            textFieldCheck(false)
        } else {
            textFieldCheck(true)
        }
    }
    
    //ResultViewControllerにユーザー名を渡す
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
          let resultViewController:ResultViewController = segue.destination as! ResultViewController

        userName = textField.text!
        resultViewController.userName = userName
        
    }
    
    //遷移先から戻ってくるときに呼ばれるメソッド
    @IBAction func unwind(_ segue: UIStoryboardSegue) {
        // リセット
        textField.text = ""
        textFieldCheck(false)
    }
    
    //フォームが入力済みかどうかでボタンの表示を変更する
    func textFieldCheck(_ didEdit:Bool) -> () {
        if didEdit {
            submitButton.backgroundColor = UIColor.systemIndigo
            submitButton.isEnabled = true
        } else {
            submitButton.backgroundColor = UIColor.systemGray3
            submitButton.isEnabled = false
        }
    }
    
}

