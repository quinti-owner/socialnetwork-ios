//
//  Info.swift
//  SocialNetwork
//
//  Created by matsumotoyuina on 2022/09/21.
//

import Foundation

struct Info: Codable {
    var status: String
    var current_page: String
    var total_num: String
    var list_num: String
    var list: [InformationList]
    var errors: [InformationErrors]
    
}
