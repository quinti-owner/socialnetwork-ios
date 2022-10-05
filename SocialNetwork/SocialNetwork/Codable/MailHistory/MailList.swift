//
//  File.swift
//  SocialNetwork
//
//  Created by matsumotoyuina on 2022/09/24.
//

import Foundation

struct MailList: Codable {
    var cur_page: String
    var total_member_num: String
    var mail_num: String
    var err_code: String
    var authorized_status: String
    var is_mail_favorite: String
    var partner_profile: MailListPartnerProfile
    var mail_list: String
    var bbs_alert_chek: MailListBbsAlertChek
    var mail: [MailListMail]
    var lottery_target: String
    var shows_profile_comment: String
    
}
