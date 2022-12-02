//
//  ProfileDeleteTalk.swift
//  SocialNetwork
//
//  Created by matsumotoyuina on 2022/10/01.
//

import Foundation

struct ProfileDeleteTalk: Codable{
    var id: String
    var message: String
    var like_coount: String
    var comment_count: String
    var photo: ProfileDeleteTalkPhoto
    var photo_count: String
    var ctime: String

}
