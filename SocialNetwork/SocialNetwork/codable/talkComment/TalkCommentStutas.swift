//
//  TalkComment.swift
//  SocialNetwork
//
//  Created by matsumotoyuina on 2022/10/03.
//

import Foundation

struct TalkCommentStutas: Codable{
    var stutas: String
    var sort: String
    var page: String
    var rows: String
    var total_comment_num: String
    var comment_num: String
    var comments: TalkCommentComment
}
