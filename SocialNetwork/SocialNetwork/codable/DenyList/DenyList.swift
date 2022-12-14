//
//  DenyList.swift
//  SocialNetwork
//
//  Created by matsumotoyuina on 2022/09/24.
//

import Foundation

struct DenyList: Codable {
    var status: String
    var current_page: String
    var total_num: String
    var list_num: String
    var list: [DenyListList]
}
