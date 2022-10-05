//
//  BbsEdit.swift
//  SocialNetwork
//
//  Created by matsumotoyuina on 2022/09/30.
//

import Foundation

struct BbsEdit: Codable {
    var status: String
    var edit: String
    var bbs: String
    var uploed_result: UploedResult
    var failed_tag_kinds: String
    var errors: String
}
