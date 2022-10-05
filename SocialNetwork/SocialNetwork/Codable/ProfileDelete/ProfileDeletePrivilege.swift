//
//  ProfileDeletePrivilege.swift
//  SocialNetwork
//
//  Created by matsumotoyuina on 2022/10/01.
//

import Foundation

struct ProfileDeletePrivilege: Codable{
    var carrer: String
    var carrer_name: String
    var last_login_time: String
    var registered_time: String
    var bbs_post_count: String
    var bbs_mail_count: String
    var abuse_count: String
    var can_view_abuse: String
    var memo_favorite_count: String
    var memo_black_count: String
    var memo_all_count: String
}
