//
//  File.swift
//  SocialNetwork
//
//  Created by matsumotoyuina on 2022/09/21.
//

import Foundation

struct ProfileDetailPhpto: Codable {
    var status: String
    var photos:[ProfileDetailPhptoPhotos]
    var contest: [ProfileDetailPhptoContest]
    var app_point: String
    var service_point: String
   
}
