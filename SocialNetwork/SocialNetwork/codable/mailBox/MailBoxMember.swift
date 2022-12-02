//
//  MailBoxMember.swift
//  SocialNetwork
//
//  Created by matsumotoyuina on 2022/09/24.
//

import Foundation

struct MailBoxMember: Codable {
    var member_rid: String
    var name: String
    var generation_id: String
    var generation: String
    var pref_id: String
    var pref: String
    var city_id: String
    var city: String
    var body: String
    var write_time: String
    var mail_status: String
    var mail_type: String
    var is_friend: String
    var is_following: String
    var has_mail_history: String
    var has_diary: String
    var has_talk: String
    var is_deny: String
    var is_newface: String
    var has_photo: String
    var has_movie: String
    var has_voice: String
    var is_mail_favorite: String
    var has_board_history: String
    var has_bbs_pure: String
    var last_sender: String
    var memo: MailBoxMemberMemo
    var status: String
    var photo_urls: MailBoxMemberPhotoUrls
    var is_rogue: String
    var rogue_lock: String
    var is_stop_later: String
}
