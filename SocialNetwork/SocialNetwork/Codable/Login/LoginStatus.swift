//
//  LoginStatus.swift
//  SocialNetwork
//
//  Created by matsumotoyuina on 2022/09/30.
//

import Foundation

struct LoginStatus: Codable{
    var ad: LoginStatusAd
    var mypage_ad: LoginStatusMypageAd
    var urls: LoginStatusUrls
}
