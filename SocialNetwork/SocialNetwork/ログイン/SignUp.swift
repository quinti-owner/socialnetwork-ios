//
//  SignUp.swift
//  SocialNetwork
//
//  Created by matsumotoyuina on 2022/11/08.
//

import UIKit

class SignUp: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var name: UITextField!
    @IBOutlet weak var prefectures: UITextField!
    @IBOutlet weak var municipalities: UITextField!
    @IBOutlet weak var ad: UITextField!
    @IBOutlet weak var moon: UITextField!
    @IBOutlet weak var day: UITextField!
    @IBOutlet weak var phonenumber: UITextField!
    @IBOutlet weak var password: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func onClickResult(_ sender: UIButton) {
        let result = storyboard?.instantiateViewController(identifier: "result") as! ResultViewController
        result.name = name .text!
        result.prefectures = prefectures.text!
        result.municipalities = municipalities.text!
        result.ad = ad.text!
        result.moon = moon.text!
        result.day = day.text!
        result.phonenumber = phonenumber.text!
        result.password = password.text!
    }
    
    //キーボードのリターンボタンが押されたとき
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        //キーボードを閉じる
        textField.resignFirstResponder()
    }
    
    //画面がタップされたときに反応する
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        //キーボードを閉じる
        view.endEditing(true)
    }
}
