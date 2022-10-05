//
//  File.swift
//  SocialNetwork
//
//  Created by matsumotoyuina on 2022/09/21.
//

import Foundation

struct ReRegister: Codable {
    var member: [Member]
    var errors: [Errors]
}
