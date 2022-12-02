//
//  TalkCommentCommentId.swift
//  SocialNetwork
//
//  Created by matsumotoyuina on 2022/10/03.
//

import Foundation

struct TalkCommentCommentId: Codable{
    var comment_id: String
    var commenter_id: String
    var commenter_rid: String
    var commenter_status: String
    var sex: String
    var name: String
    var area_id: String
    var area: String
    var pref_id: String
    var pref: String
    var city_id: String
    var city: String
    var generation_id: String
    var generation: String
    var comment: String
    var comment_status: String
    var comment_no: String
    var is_recomment: String
    var recomment_no: String
    var recomment_partner_name: String
    var ctime: String
    var photo_urls: TalkCommentCommentIdPhotoUrls
    var is_sensitive: String
    var is_debug_sensitive: String

}
