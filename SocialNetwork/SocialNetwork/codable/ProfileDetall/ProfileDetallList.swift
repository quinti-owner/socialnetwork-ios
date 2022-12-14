//
//  ProfileDetallList.swift
//  SocialNetwork
//
//  Created by matsumotoyuina on 2022/10/04.
//

import Foundation

struct ProfileDetallList: Codable {
    var member_no: String
    var member_rid: String
    var name: String
    var sex: String
    var generarion: String
    var auto_update_gen: String
    var birth_day: String
    var pref_id: String
    var ctiy_id: String
    var pref: String
    var ctiy: String
    var star: String
    var bloodtype: String
    var marrige: String
    var child: String
    var style: String
    var height: String
    var looks: String
    var bust: String
    var waist: String
    var hip: String
    var cup: String
    var lifestyle: String
    var photos: [ProfileDetallListphotos]
    var has_voice: String
    var has_movie: String
    var point_view: [ProfileDetallListPointView]
    var avatar: [ProfileDetallListAvatar]
    var is_friend: String
    var is_following: String
    var is_follwer: String
    var is_mute: String
    var is_jya: String
    var typed: String
    var typed_count: String
    var typed_ranking: String
    var smiled_today: String
    var setting: [ProfileDetallLiStsetting]
    var occupation: String
    var income: String
    var somoking: String
    var drinking: String
    var free_time: String
    var car: String
    var status: String
    var status_blak: String
    var favorite_age1: String
    var favorite_age2: String
    var favorite_style1: String
    var favorite_style2: String
    var favorite_car: String
    var new_face: String
    var bbs_pure: [ProfileDetallListBbsPure]
    var bbs_adult: [ProfileDetallListBbsAdult]
    var diary: [ProfileDetallListDiary]
    var talk: [ProfileDetallListtalk]
    var board: [ProfileDetallListBoard]
    var gohan: [ProfileDetallListGohan]
    var comment: String
    var interests: [ProfileDetallListInterests]
    var introductions: [ProfileDetallListIntroductions]
    var class_id: String
    var class_name: String
    var stage: String
    var privilege: [ProfileDetallListPrivilege]
    var relation: ProfileDetallListRelation
    var relationship:ProfileDetallListRelationship
    var sent_mail: String
    var memo: ProfileDetallListMemo
    var con_move: String
    var bbs_alert_check: ProfileDetallListBbsAlertCheck
    var selfie_verifide: String
    var facebook_verifide: String
    var chocolate_id: String
    var contest: ProfileDetallListContest
    var education: String
    var roommate: String
    var personality: String
    var pay_1st_date: String
    var hope_to_meet: String
    var birthplace: String
    var vision: String
    var registration: String
    var my_type_ranking: ProfileDetallListMyTypeRanking
    var is_reviewer: ProfileDetallListIsReviewer
}
