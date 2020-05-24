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
        textField.delegate = self
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
    
    //フォーム入力完了後
    func textFieldDidEndEditing(_ textField: UITextField) {
        if textField.text == "" {
            return textFieldCheck(false)
        } else {
            return textFieldCheck(true)
        }
    }
    
     // キーボードを閉じる
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
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

