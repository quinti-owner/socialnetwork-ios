//
//  MemoCategoryStatus .swift
//  SocialNetwork
//
//  Created by matsumotoyuina on 2022/11/29.
//

import Foundation

struct MemoCategoryStatus: Codable {
    var status: String
    var list_num: String
    var memo_list: [MemoCategoryList]
    
}
