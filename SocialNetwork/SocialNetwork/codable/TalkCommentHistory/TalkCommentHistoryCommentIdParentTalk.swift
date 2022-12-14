//
//  TalkCommentHistoryCommentIdParentTalk.swift
//  SocialNetwork
//
//  Created by matsumotoyuina on 2022/10/03.
//

import Foundation

struct TalkCommentHistoryCommentIdParentTalk: Codable{
    var massage_id: String
    var massage_text: String
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
    var photo_urls: TalkCommentHistoryCommentIdParentTalkPhotoUrls
    
}
