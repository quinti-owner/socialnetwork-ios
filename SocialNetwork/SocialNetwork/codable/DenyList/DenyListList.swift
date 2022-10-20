//
//  DenyListList.swift
//  SocialNetwork
//
//  Created by matsumotoyuina on 2022/09/24.
//

import Foundation

struct DenyListList: Codable {
    var id: String
    var comment: String
    var member_id: String
    var name: String
    var category_id: String
    var category:String
    var write_time: String
    var pref_id: String
    var city_id: String
    var pref: String
    var city: String
    var generation_id: String
    var generation: String
    var gender: String
    var photo_urls: DenyListListPhotoUrls
    var prev_login_time: String
    var is_friend: String
    var is_following: String
    var has_mail_history: String
    var has_diary: String
    var has_talk: String
    var has_memo: String
    var is_deny: String
    var is_newface: String
    var has_photo: String
    var has_movie: String
    var has_voice: String
    var is_mail_favorite: String
    var has_board_history: String
    var has_bbs_pure: String
    var has_bbs_adult: String
    var status: String
    var is_rogue: String
    var is_stop_later: String
    
}