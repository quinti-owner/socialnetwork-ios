//
//  TalkCommentHistory.swift
//  SocialNetwork
//
//  Created by matsumotoyuina on 2022/10/03.
//

import Foundation

struct TalkCommentHistory: Codable{
    var status: String
    var total_comment_num: String
    var talk_comment_num: String
    var comments: TalkCommentHistoryCommentId

}
