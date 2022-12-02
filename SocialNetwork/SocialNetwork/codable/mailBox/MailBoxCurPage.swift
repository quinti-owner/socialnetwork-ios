//
//  MailBox.swift
//  SocialNetwork
//
//  Created by matsumotoyuina on 2022/09/24.
//

import Foundation

struct MailBoxCurPage: Codable {
    var cur_page: String
    var total_member_num: String
    var err_code: String
    var member: [MailBoxMember]
}
