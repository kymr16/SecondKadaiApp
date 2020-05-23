//
//  ResultViewController.swift
//  SecondKadaiApp
//
//  Created by 吉田 玲子 on 2020/05/24.
//  Copyright © 2020 reiko.yoshida. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    
    // 受け取るためのプロパティ（変数）を宣言しておく
     var userName:String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        label.text = "こんにちは \(userName)さん"
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
