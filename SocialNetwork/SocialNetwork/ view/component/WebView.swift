//
//  WebView.swift
//  SocialNetwork
//
//  Created by 古堅ニノスカ on 2022/12/28.
//

import SwiftUI
import WebKit

// WebViewコンポーネント
struct WebView: UIViewRepresentable {
    let url: String
    
    func makeUIView(context: Context) -> WKWebView {
        return WKWebView()
    }
    
    func updateUIView(_ uiView: WKWebView, context: Context) {
        guard let url = URL(string: url) else {
            return
        }
        let request = URLRequest(url: url)
        uiView.load(request)
    }
}
