//
//  InformationErrors.swift
//  SocialNetwork
//
//  Created by matsumotoyuina on 2022/10/04.
//

import Foundation

struct InformationErrors: Codable {
    var status: String
    var notice: String
    var error: [InformationErrorsError]
    
}
