//
//  TalkCommentHistoryCommentId.swift
//  SocialNetwork
//
//  Created by matsumotoyuina on 2022/10/03.
//

import Foundation

struct TalkCommentHistoryCommentId: Codable{
    var comment_id: String
    var comment: String
    var comment_status: String
    var comment_no: String
    var is_recomment: String
    var recomment_no: String
    var recomment_partner_name: String
    var ctime: String
    var parent_comment: TalkCommentHistoryCommentIdParentComment
    var parent_talk: TalkCommentHistoryCommentIdParentTalk

}
