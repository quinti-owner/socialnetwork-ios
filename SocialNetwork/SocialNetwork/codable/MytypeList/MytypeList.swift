//
//  MytypeListAPI.swift
//  SocialNetwork
//
//  Created by matsumotoyuina on 2022/09/28.
//

import Foundation

struct MytypeList: Codable {
    var status: String
    var total_num: String
    var list_num: String
    var cur_page: String
    var list: [MytypeListList]
    
}
