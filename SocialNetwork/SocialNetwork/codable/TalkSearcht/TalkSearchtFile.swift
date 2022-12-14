//
//  TalkSearchtFile.swift
//  SocialNetwork
//
//  Created by matsumotoyuina on 2022/10/03.
//

import Foundation

struct TalkSearchtFile: Codable{
    var file: TalkSearchtPhotoUrlI
    var num_of_life: String
    var num_of_comment: String
    var num_of_lile: String
    var like_exists: String
    var comment_exists: String
    var avatar: TalkSearchtDisplay
    var photo_urls: TalkSearchtPhotoUrls
    var is_sensitive: String
    var is_debug_sensitive: String
    
}
