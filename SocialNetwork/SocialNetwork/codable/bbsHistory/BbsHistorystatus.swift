//
//  BbsHistory.swift
//  SocialNetwork
//
//  Created by matsumotoyuina on 2022/09/30.
//

import Foundation

struct BbsHistorystatus: Codable {
    var status: String
    var total_bbs_num: String
    var list: [BbsHistoryList]
}
