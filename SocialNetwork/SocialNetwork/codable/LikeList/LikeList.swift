//
//  LikeList.swift
//  SocialNetwork
//
//  Created by matsumotoyuina on 2022/09/30.
//

import Foundation

struct LikeList: Codable{
    var status: String
    var page: String
    var rows: String
    var members: [LikeListMembers]
}
