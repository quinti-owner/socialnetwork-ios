//
//  MytypeExecStatus .swift
//  SocialNetwork
//
//  Created by matsumotoyuina on 2022/11/29.
//

import Foundation

struct MytypeExecStatus: Codable{
    var status: String
    var next_member: String
    var error_description: String
    var error_code: String
}
