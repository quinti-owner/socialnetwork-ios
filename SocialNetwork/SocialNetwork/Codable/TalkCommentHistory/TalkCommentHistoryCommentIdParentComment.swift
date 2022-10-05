//
//  TalkCommentHistoryCommentIdParentComment.swift
//  SocialNetwork
//
//  Created by matsumotoyuina on 2022/10/03.
//

import Foundation

struct TalkCommentHistoryCommentIdParentComment: Codable{
    var comment_id: String
    var comment: String
    var comment_status: String
    var comment_no: String
    var is_recomment: String
    var recomment_no: String
    var recomment_partner_name: String
    var ctime: String
    var partner_rid: String
    var partner_sutatus: String
    var name: String
    var sex: String
    var area_id: String
    var area: String
    var pref_id: String
    var pref: String
    var city_id: String
    var city: String
    var generation_id: String
    var generation: String
    var photo_urls: TalkCommentHistoryCommentIdParentCommentPhotoUrls
    
}
