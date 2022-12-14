//
//  PrivacyPolicy.swift
//  SocialNetwork
//
//  Created by matsumotoyuina on 2022/10/26.
//

import UIKit
import WebKit

class PrivacyPolicy: UIViewController, WKNavigationDelegate {
    
    @IBOutlet weak var wKWebView: WKWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        if let url = URL(string: "https://www.yahoo.co.jp/") {
            let request = URLRequest(url: url as URL)
            wKWebView.load(request as URLRequest)
        }
        
        wKWebView.navigationDelegate = self
    }
}
