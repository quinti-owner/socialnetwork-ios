//
//  TalkDeleteResult.swift
//  SocialNetwork
//
//  Created by matsumotoyuina on 2022/10/03.
//

import Foundation

struct TalkDeleteStatus: Codable{
    var status: String
    var partner_id: String
    var partner_rid: String
    var partner_sutatus: String
    var name: String
    var sex: String
    var area_id: String
    var area: String
    var pref_id: String
    var pref: String
    var city_id: String
    var city: String
    var generation_id: String
    var generation: String
    var massage_id: String
    var massage_text: String
    var massage_statsu: String
    var is_sensitive: String
    var is_debug_sensitive: String
    var ltime: String
    var comment: String
    var like_ng: String
    var num_of_life: String
    var num_of_comment: String
    var num_of_lile: String
    var like_exists: String
    var avatar: TalkDeleteResultAvatar
    var photo_urls: TalkDeleteResultPhotoUrls
    var files: TalkDeleteResultFiles

}
