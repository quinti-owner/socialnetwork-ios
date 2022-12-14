//
//  Fotprint.swift
//  SocialNetwork
//
//  Created by matsumotoyuina on 2022/09/24.
//

import Foundation

struct Fotprint: Codable {
    var current_page: String
    var total_num: String
    var tody: String
    var list_num: String
    var list: [FotprintList]
    var status: String
}
