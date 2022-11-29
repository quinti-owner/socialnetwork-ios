//
//  ResultViewController.swift
//  SocialNetwork
//
//  Created by matsumotoyuina on 2022/11/08.
//

import UIKit
import MessageUI

//　　子クラス　　　　　　　親クラス
class ResultViewController: UIViewController {
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var prefecturesLabel: UILabel!    
    @IBOutlet weak var municipalitiesLabel: UILabel!
    @IBOutlet weak var adLabel: UILabel!
    @IBOutlet weak var moonLabel: UILabel!    
    @IBOutlet weak var dayLabel: UILabel!
    @IBOutlet weak var phonenumberLabel: UILabel!
    @IBOutlet weak var passwordLabel: UILabel!
    
    
    var name = ""
    var prefectures = ""
    var municipalities = ""
    var ad = ""
    var moon = ""
    var day = ""
    var phonenumber = ""
    var password = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
        nameLabel.text = name
        prefecturesLabel.text = prefectures
        municipalitiesLabel.text = municipalities
        adLabel.text = ad
        moonLabel.text = moon
        dayLabel.text = day
        phonenumberLabel.text = phonenumber
        passwordLabel.text = password
        
    }
}
