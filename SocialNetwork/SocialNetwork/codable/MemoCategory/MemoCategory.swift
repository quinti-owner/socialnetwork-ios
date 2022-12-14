//
//  MemoCategory.swift
//  SocialNetwork
//
//  Created by matsumotoyuina on 2022/09/21.
//

import Foundation

struct MemoCategory: Codable {
    var status: String
    var list_num: String
    var memo_list: [MemoCategoryList]
    
}
