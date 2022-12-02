//
//  File.swift
//  SocialNetwork
//
//  Created by matsumotoyuina on 2022/09/21.
//

import Foundation

struct ProfilePhotoStatus: Codable {
    var status: String
    var method_id: String
    var method: String
    var photos: [ProfilePhotoList]
    
}
