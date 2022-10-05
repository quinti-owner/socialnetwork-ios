//
//  ProfileDetallListtalk.swift
//  SocialNetwork
//
//  Created by matsumotoyuina on 2022/10/05.
//

import Foundation

struct ProfileDetallListtalk: Codable {
    var id: String
    var message: String
    var like_count: String
    var comment_count: String
    var photos: ProfileDetallListtalkPhotos

}
