//
//  File.swift
//  SocialNetwork
//
//  Created by matsumotoyuina on 2022/09/21.
//

import Foundation

struct ProfilePhotoList: Codable {
    var id: String
    var main: String
    var name: String
    var send_time: String
    var status_user: String
    var status_app: String
    var status_admin: String
    var status_app_admin: String
    var image_url: String
    var thumbnail_url: String

}
