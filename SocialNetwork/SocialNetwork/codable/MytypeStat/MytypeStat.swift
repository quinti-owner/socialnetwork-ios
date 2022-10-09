//
//  MytypeStat.swift
//  SocialNetwork
//
//  Created by matsumotoyuina on 2022/09/21.
//

import Foundation

struct MytypeStat: Codable {
    var status: String
    var from_member: [FromMember]
    var from_partner: [FromPartner]

}
