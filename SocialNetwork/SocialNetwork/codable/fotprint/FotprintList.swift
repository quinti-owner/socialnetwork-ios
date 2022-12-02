//
//  File.swift
//  SocialNetwork
//
//  Created by matsumotoyuina on 2022/09/24.
//

import Foundation

struct FotprintList: Codable {
    var id: String
    var partner_rid: String
    var name: String
    var generation: String
    var generation_id: String
    var pref_id: String
    var city_id: String
    var pref: String
    var city: String
    var memo_comment: String
    var from_user: String
    var photo_urls: FotprintListPhotoUrls
    var ctime: String
    var sex: String
    var memo_category_id: String
    var memo_category: String
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
    var is_new: String
    var status: String
    var rogue_lock: String
    var is_rogue: String
    var is_stop_later: String
}
