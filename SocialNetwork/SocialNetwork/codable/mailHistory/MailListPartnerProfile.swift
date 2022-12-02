//
//  PartnerProfile.swift
//  SocialNetwork
//
//  Created by matsumotoyuina on 2022/09/24.
//

import Foundation

struct MailListPartnerProfile: Codable {
    var rid: String
    var status: String
    var no: String
    var name: String
    var area: String
    var sex: String
    var generation: String
    var pref: String
    var star: String
    var marriage: String
    var child: String
    var styl: String
    var looks: String
    var bust: String
    var waist: String
    var hip: String
    var occupation: String
    var lincome: String
    var smoking: String
    var bloodtype: String
    var free_time: String
    var favorite1: String
    var favorite2: String
    var favorite_style1: String
    var favorite_style2: String
    var deny: String
    var is_deny: String
    var is_denied: String
    var is_authorized: String
    var is_rogue: String
    var is_stop_later: String
    var photo_urls: [PartnerProfilePhotoUrls]
    var free_first_mail: String   
}
