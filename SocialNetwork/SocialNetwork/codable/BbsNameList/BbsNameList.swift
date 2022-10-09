//
//  BbsNameList.swift
//  SocialNetwork
//
//  Created by matsumotoyuina on 2022/09/24.
//

import Foundation

struct BbsNameList: Codable {
    var status: String
    var bbs_num: String
    var list: BbsNameListList
}
