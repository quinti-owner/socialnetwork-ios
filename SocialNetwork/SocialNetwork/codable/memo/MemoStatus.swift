//
//  Memo.swift
//  SocialNetwork
//
//  Created by matsumotoyuina on 2022/09/30.
//

import Foundation

struct MemoStatus: Codable{
    var status: String
    var current_page: String
    var total_num: String
    var list_num: String
    var list: MemoList
}
