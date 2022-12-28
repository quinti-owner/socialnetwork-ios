//
//  PrivacyPolicyTermsServiceView.swift
//  SocialNetwork
//
//  Created by 古堅ニノスカ on 2022/12/28.
//

import SwiftUI

/// 利用規約・プライバシーポリシー画面
/// 
/// - Author: daniel
///
struct PrivacyPolicyTermsServiceView: View {
    // Webサイトの種類
    @State var webSite: WebSite
    // WebサイトのURL
    @State private var url = ""
    
    var body: some View {
        ZStack {
            WebView(url: url)
        }
        .onAppear() {
            switch webSite {
                // プライバシーポリシー
            case .privacyPolicy:
                url = "https://550909.com/doc/policy.html"
            case .termsService:
                url = "https://550909.com/doc/rule.html"
            }
        }
    }
}

// Webサイトの種類
enum WebSite {
    // プライバシーポリシー
    case privacyPolicy
    // 利用規約
    case termsService
}

struct PrivacyPolicyTermsServiceView_Previews: PreviewProvider {
    static var previews: some View {
        PrivacyPolicyTermsServiceView(webSite: .privacyPolicy)
    }
}
