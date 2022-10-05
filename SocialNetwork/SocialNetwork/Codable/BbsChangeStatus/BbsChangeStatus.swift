//
//  File.swift
//  SocialNetwork
//
//  Created by matsumotoyuina on 2022/09/28.
//

import Foundation

struct BbsChangeStatus: Codable {
    var status: String
    var list: [BbsChangeStatusList]
}
