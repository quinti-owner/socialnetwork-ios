//
//  FavoriteBbsListProfile.swift
//  SocialNetwork
//
//  Created by matsumotoyuina on 2022/10/03.
//

import Foundation

struct FavoriteBbsListProfile: Codable{
    var member_rid: String
    var sex: String
    var generation: String
    var pref_id: String
    var city_id: String
    var pref: String
    var city: String
    var occupation: String
    var photo_urls: FavoriteBbsListProfilePhotoUrls
    
}
