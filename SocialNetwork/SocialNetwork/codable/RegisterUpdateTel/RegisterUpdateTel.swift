//
//  RegisterUpdateTel.swift
//  SocialNetwork
//
//  Created by matsumotoyuina on 2022/09/28.
//

import Foundation

struct RegisterUpdateTel: Codable {
    var status: String
    var free_tel: String
    var session_id: String
    var duplicate: [RegisterUpdateTelDuplicate]
}
