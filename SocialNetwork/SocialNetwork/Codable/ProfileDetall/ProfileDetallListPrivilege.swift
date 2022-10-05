//
//  ProfileDetallListPrivilege.swift
//  SocialNetwork
//
//  Created by matsumotoyuina on 2022/10/05.
//

import Foundation

struct ProfileDetallListPrivilege: Codable {
    var carrier: String
    var carrier_model: String
    var last_login_time: String
    var registered_time: String
    var bbs_post_count: String
    var sent_mail_count: String
    var abuse_count: String
    var can_view_abuse: String
    var memo_favorite_count: String
    var memo_black_count: String
    var memo_all_count: String
}
