//
//  File.swift
//  SocialNetwork
//
//  Created by matsumotoyuina on 2022/09/21.
//

import Foundation

struct Informationpushlist: Codable {
    var status: String
    var method: String
    var list_judgment: [InformationPushListJudgment]
    var list_comm: [InformationPushListComm]
    var list_member: [InformationPushListMember]
    
}
